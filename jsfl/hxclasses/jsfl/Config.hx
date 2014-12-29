package jsfl;
import haxe.macro.Context;

@:enum abstract Version(Int) {
	//var Flash5 = 5;	// No jsfl yet
	//var CMX = 6;		// No jsfl yet
	var MX2004 = 7;
	var Flash8 = 8;
	var CS3 = 9;
	var CS4 = 10;
	var CS5 = 11;
	var CS6 = 12;
	var CC = 13;
	var CC2014 = 14;
}

//@:require(flpro_version >= CC)

class Config {
	
	static var versionCFlagName = ("flpro_version");
	static var version : Version;
	
	macro public static function initVersion() {
		if (Context.defined(versionCFlagName)) {
			var versionStr = Context.definedValue(versionCFlagName);
			version = Type.createEnum(Version, versionStr);
		} else {
			
		}
		haxe.macro.Compiler.define(versionCFlagName, getVersionNumber(version));
	}

	macro public static function getVersionNumber(name : Version) : Int {

		macro var versionNumber = switch (name) {
			case Flash5 : 5;
			case MX : 6;
			case MX2004 : 7;
			case Flash8 : 8;
			case CS3 : 9;
			case CS4 : 10;
			case CS5 : 11;
			case CS6 : 12;
			case CC : 13;
			case CC2014 : 14;
		}
		return Context.makeExpr(versionNumber, Context.currentPos());
	}
	
}