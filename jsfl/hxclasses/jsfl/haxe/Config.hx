package jsfl.haxe;

import haxe.macro.Expr;
import haxe.macro.Context;
import jsfl.haxe.Utils;
using Lambda;

#if macro
/*
 *	Compile-time configuration of jsfl.
 */
@:allow(jsfl.haxe)
class Config {

	static var isBuilt(default, null): Bool = false;
	
	/**
	 * Define jsfl version to be used.
	 * Default is the latest version supported.
	 */
	static public var version(default, null): VersionName = MX2004;
	
	/**
	 * Define if deprecated jQuery APIs are allowed or not.
	 */
	static public var allowDeprecated(default, null):Bool = false;
	
	/**
	 * Setter of Config.version.
	 * Used in hxml: --macro jsfl.haxe.Config.setVersion(CS4)
	 */
	static public function setVersion(v:VersionName): VersionName {
		return version = v;
	}
	
	/**
	 * 
	 */
	static public function build():Array<Field> {
		var fields = Context.getBuildFields();
		
		// filter and group the fields
		//var ver = Utils.getVersionNumber(version);
		var fieldMap = new Map<String, Array<Field>>();
		for (field in fields) {
			// filtering based on @:jQueryVersion
			var jQueryVersionMeta = field.meta.filter(function(m) return m.name == ":jsflVersion")[0];
			if (jQueryVersionMeta != null) {
				var jQueryVersionMetaVal = jQueryVersionMeta.params[0];
				if (jQueryVersionMetaVal != null) {
					switch (jQueryVersionMetaVal.expr) {
						// If it's a structure
						case EObjectDecl(fields):
							// iterate on fields using lambda.exists
							if (fields.exists(
								function (f): Bool {
									return switch(f) {
										case { field: "added",	expr: {expr: EConst(CIdent(val)), pos:_} }:
											Utils.compareVersion2(version, Type.createEnum(VersionName, val)) < 0;
											
										case { field: "deprecated", expr: {expr: EConst(CIdent(val)), pos:_} }:
											!allowDeprecated && Utils.compareVersion2(version, Type.createEnum(VersionName, val)) >= 0;
											
										case { field: "removed", expr: {expr: EConst(CIdent(val)), pos:_} }:
											Utils.compareVersion2(version, Type.createEnum(VersionName, val)) >= 0;
											
										default:
											throw 'Invalid field of @:jsflVersion: ${f.field}: ${f.expr}';
									}
								}
							)) continue;
						default:
							throw "Param of @:jsflVersion should be EObjectDecl.";
					}
				}
			}
			
			// valid field, add to fieldMap 
			if (!fieldMap.exists(field.name)) {
				fieldMap.set(field.name, new Array<Field>());
			}
			fieldMap.get(field.name).push(field);
		}
		
		var newFields = [];
		for (fields in fieldMap) {
			var field = fields.pop();
			field.meta = [];
			newFields.push(field);
		}

		isBuilt = true;
		return newFields;
	}
	
}
#end