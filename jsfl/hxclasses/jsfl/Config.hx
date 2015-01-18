package jsfl;

import haxe.macro.Expr;
import haxe.macro.Context;

//@:enum abstract Version(Int) {
	////var FlashPro5 = 5;	// No jsfl yet
	////var CMX = 6;		// No jsfl yet
	//var MX2004 = 7;
	//var FlashPro8 = 8;
	//var CS3 = 9;
	//var CS4 = 10;
	//var CS5 = 11;
	//var CS6 = 12;
	//var CC = 13;
	//var CC2014 = 14;
//}

enum VersionName {
	//var FlashPro5;	// No jsfl yet
	//var CMX;		// No jsfl yet
	MX2004;
	FlashPro8;
	CS3;
	CS4;
	CS5;
	CS6;
	CC;
	CC2014;
}

//@:require(jsfl_version >= CC)

class Config {
	
	static var versionCFlagName = ("jsfl_version");
	static var version : VersionName;
	static var defaultVersion(default, null) : VersionName;
	
	macro public static function initVersion() {
		if (Context.defined(versionCFlagName)) {
			var versionStr = Context.definedValue(versionCFlagName);
			version = Type.createEnum(VersionName, versionStr);
		} else {
			version = defaultVersion;
		}
		haxe.macro.Compiler.define(versionCFlagName, getVersionNumber(version));
	}

	macro public static function getVersionNumber(name : VersionName) : Int {

		macro var versionNumber = switch (name) {
			//case FlashPro5 : 5;
			//case MX : 6;
			case MX2004 : 7;
			case FlashPro8 : 8;
			case CS3 : 9;
			case CS4 : 10;
			case CS5 : 11;
			case CS6 : 12;
			case CC : 13;
			case CC2014 : 14;
		}
		return Context.makeExpr(versionNumber, Context.currentPos());
	}
	
	/**
	 * 
	 */
	static public function build():Array<Field> {
		var fields = Context.getBuildFields();
		var cls = Context.getLocalClass();
		var clsType = cls.get();
		var clsName = cls.toString();
		
		for (field in fields) {
			// filtering based on @:require
			var requireVersionMeta = field.meta.filter(function(m) return m.name == ":require")[0];
			if requireVersionMeta {
				var requireVersionMetaVal = requireVersionMeta.params[0];
				if (requireVersionMetaVal != null) {
					// Find and VersionName by its number equivalent
					requireVersionMetaVal.expr
				}
			}
		}
	}
	
}