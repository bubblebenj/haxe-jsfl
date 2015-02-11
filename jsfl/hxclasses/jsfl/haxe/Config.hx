package jsfl.haxe;

import haxe.macro.Expr;
import haxe.macro.Context;
import jsfl.haxe.Utils;


//@:require(jsfl_version >= CC)
#if macro
class Config {
	
	static var isBuilt(default, null):Bool = false;
	
	/**
		Define jsfl version to be used.
		Default is the latest version supported.
	**/
	static public var version(default, null): VersionName = CS6;
	
	/**
		Setter of Config.version.
		Used in hxml: --macro jsfl.haxe.Config.setVersion("1.8.3")
	**/
	static public function setVersion(v:VersionName): VersionName {
		return version = v;
	}
	
	/**
	 * 
	 */
	static public function build(): Void {
		var fields = Context.getBuildFields();
		var cls = Context.getLocalClass();
		var clsType = cls.get();
		var clsName = cls.toString();
		
		// filter and group the fields
		var ver = Utils.getVersionNumber(version);
		var fieldMap = new Map<String, Array<Field>>();
		for (field in fields) {
			// filtering based on @:jQueryVersion
			var jQueryVersionMeta = field.meta.filter(function(m) return m.name == ":jsflVersion")[0];
			if (jQueryVersionMeta != null) {
				var jQueryVersionMetaVal = jQueryVersionMeta.params[0];
				if (jQueryVersionMetaVal != null) {
					switch (jQueryVersionMetaVal.expr) {
						case EObjectDecl(fields):
							if (fields.exists(function(f):Bool {
								return switch(f) {
									case { field: "added", expr: {expr: EConst(CString(val)), pos:_} }:
										Utils.compareVersion(ver, Utils.getVersionNumber(val)) < 0;
									case { field: "deprecated", expr: {expr: EConst(CString(val)), pos:_} }:
										!allowDeprecated && Utils.compareVersion(ver, Utils.getVersionNumber(val)) >= 0;
									case { field: "removed", expr: {expr: EConst(CString(val)), pos:_} }:
										Utils.compareVersion(ver, Utils.getVersionNumber(val)) >= 0;
									default:
										throw 'Invalid field of @:jsflVersion: ${f.field}: ${f.expr}';
								}
							})) continue;
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
		
		isBuilt = true;
	}
	
}
#end