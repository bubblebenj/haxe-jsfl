package jsfl.haxe;

import haxe.macro.Compiler;
import haxe.macro.Expr;
import haxe.macro.Context;

using Lambda;
using StringTools;

enum VersionName {
	//FlashPro5;	// No jsfl yet
	//MX;			// No jsfl yet
	MX2004;
	Flash8;
	CS3;
	CS4;
	CS5;
	CS6;
	CC;
	CC2014;
}

#if macro
/*
 *	Compile-time configuration of jsfl.
 */
@:allow(jsfl.haxe)
class Config {
	
	static var isBuilt(default, null): Bool = false;

	/**
	 * Define if deprecated jQuery APIs are allowed or not.
	 */
	static public var allowDeprecated(default, null): Bool = false;
	
	/**
	 * Define jsfl version to be used.
	 */
	static public var version(default, null): VersionName;
	
	/**
	 * Default is the latest non CC version.
	 */
	static public var defaultVersion(default, never): VersionName = CS6;
	
	/**
	 * Get the version defined in hxml.
	 * Used in hxml: -D jsflVersion=MX2004
	 * @return the version if correctly set or null otherwise
	 */
	static private function getDefineVersion(): VersionName {
		var defineVersion: VersionName;

		var strDefineVersion = Compiler.getDefine('jsflVersion');		
		if (strDefineVersion != null) {
			try {
				defineVersion = Type.createEnum(VersionName, strDefineVersion);
			} catch (e: String) {
				trace('$strDefineVersion is not a correct value for VersionName');
				trace('See correct values of enum VersionName in jsfl.haxe.Config.hx');
			}
		}
		else {
			trace('No compiler define set for "jsflVersion", add -D jsflVersion=VERSION to your hxml to set your version.');
		}
		
		return defineVersion;
	}
	
	/**
	 * Get the version, if not set, set it using define or default if not available
	 * @return the version used to filter field at completion/compilation time
	 */
	static private function getVersion(): VersionName {
		if (version != null) {
			return version;
		}
		else {
			version = getDefineVersion();
			if (version == null) {
				trace('Setting default version $defaultVersion');
				version = defaultVersion;
			}
			else {
				trace('Using version $version');
			}
		}
		return version;
	}
	
	/**
	 * Filter class fields base on Flash IDE version
	 * @return The new field of the class or null if no change is required
	 */
	static public function build(): Array<Field> {
		var fields = Context.getBuildFields();
		
		var ver = getVersion();
		
		// filter and group the fields
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
											compareVersion(ver, Type.createEnum(VersionName, val)) < 0;
											
										case { field: "deprecated", expr: {expr: EConst(CIdent(val)), pos:_} }:
											!allowDeprecated && compareVersion(ver, Type.createEnum(VersionName, val)) >= 0;
											
										case { field: "removed", expr: {expr: EConst(CIdent(val)), pos:_} }:
											compareVersion(ver, Type.createEnum(VersionName, val)) >= 0;
											
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
	
	/**
	 * Get a numeric equivalent of the version name
	 * @param	name the version name
	 * @return the numeric version
	 */
	static private function getVersionNumber(name: VersionName): Int {
		
		var versionNumber = switch (name) {
			//case FlashPro5 : 5;
			//case MX : 6;
			case MX2004 : 7;
			case Flash8 : 8;
			case CS3 : 9;
			case CS4 : 10;
			case CS5 : 11;
			case CS6 : 12;
			case CC : 13;
			case CC2014 : 14;
		}
		return versionNumber;
	}
	
	/**
	 * Tells if a version is older or newer than an version
	 * @param	v0 the version to compare
	 * @param	v1 the version to compare against
	 * @return 0 if version are equal, >0 if v0 is newer, <0 if v0 is older
	 */
	static private function compareVersion(v0: VersionName, v1: VersionName): Int {
		return getVersionNumber(v0) - getVersionNumber(v1);
	}

}
#end