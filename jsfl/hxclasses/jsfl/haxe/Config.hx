package jsfl.haxe;

import haxe.EnumTools;
import haxe.macro.Expr;
import haxe.macro.Context;
import jsfl.haxe.Utils;

using Lambda;


//@:require(jsfl_version >= CC)
#if macro
class Config {
	
    static var isBuilt(default, null):Bool = false;
   
    /**
     * Define if deprecated jsfl APIs are allowed or not.
     */
    static public var allowDeprecated(default, null):Bool = false;
   
    /**
     * Define jsfl version to be used.
     * Default is the latest version supported.
     */
    static public var version(default, null): VersionName = FlashPro8;
   
    /**
     * Setter of Config.version.
     * Used in hxml: --macro jsfl.haxe.Config.setVersion("CS6")
     **/
    static public function setVersion(name:String): VersionName {
		var v = CS3;//EnumTools.createByName(VersionName, name);
		return version = v;
    }
	
	/**
	 * 
	 */
	static public function build(): Array<Field> {
		var fields = Context.getBuildFields();
		var cls = Context.getLocalClass();
		var clsType = cls.get();
		var clsName = cls.toString();
		
		// filter and group the fields
		var ver = Utils.getVersionNumber(version);
		var fieldMap = new Map<String, Array<Field>>();
		for (field in fields) {
			// filtering based on @:jQueryVersion
			var jsflVersionMeta = field.meta.filter(function(m) return m.name == ":jsflVersion")[0];
			if (jsflVersionMeta != null) {
				var jsflVersionMetaVal = jsflVersionMeta.params[0];
				if (jsflVersionMetaVal != null) {
					switch (jsflVersionMetaVal.expr) {
						// structure declarations if all their fields are values
						case EObjectDecl(fields):
                            if (fields.exists(
								function(f): Bool {
									try {
										trace(macro expr)
										return switch(f) {
											case { field: "added", expr: { expr: val, pos:_ } } :
												trace (val);
												Utils.compareVersion(ver, Utils.getVersionNumber(val)) < 0;
											case { field: "deprecated", expr: {expr: EConst(val), pos:_} }:
												!allowDeprecated && Utils.compareVersion(ver, Utils.getVersionNumber(cast(val, VersionName))) >= 0;
											case { field: "removed", expr: {expr: EConst(val), pos:_} }:
												Utils.compareVersion(ver, Utils.getVersionNumber(cast(val, VersionName))) >= 0;
											default:
												throw 'Invalid field of @:jsflVersion: ${f.field}: ${f.expr}';
										}
									}
									catch(e:Dynamic) {
										trace(e);
									}
								}
							)) continue;
							trace(macro EObjectDecl(fields));
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
		
		// return new fields with @:overload aggregated
		var newFields = [];
		for (fields in fieldMap) {
			var field = fields.pop();
			field.meta = [];
			
			var docMap = new Map<String,Void>();
			if (field.doc != null)
				docMap.set(field.doc, null);
			
			for (overload in fields) {
				var func:Function = switch(overload.kind) {
					case FFun(f): f;
					default: throw "Should only overload a function.";
				}
				func.expr = macro {};
				field.meta.push({
					name: ":overload",
					params: [{ expr: EFunction(null, func), pos: overload.pos }],
					pos: overload.pos
				});
				
				if (overload.doc != null && !docMap.exists(overload.doc)) {
					field.doc = (field.doc == null ? "" : field.doc + "\n OR: ") + overload.doc;
					docMap.set(overload.doc, null);
				}
			}
			newFields.push(field);
		}
		
		isBuilt = true;
		return newFields;
	}
	
}
#end