package jsfl;
import haxe.macro.Context;

@:enum
abstract Version(Int) 
{
	var Flash5 = 5;
	var CMX = 6;
	var MX2004 = 7;
	var Flash8 = 8;
	var CS3 = 9;
	var CS4 = 10;
	var CS5 = 11;
	var CS6 = 12;
	var CCC = 13;
	var CC2014 = 14;
}

//enum Version {
	//Flash5;
	//MX;
	//MX2004;
	//Flash8;
	//CS3;
	//CS4;
	//CS5;
	//CS6;
	//CC;
	//CC2014;
//}

//@:require(flpro_version >= CC)

class Config {
	
	//public static var Flash5 = 5;
	//public static var MX = 6;
	//public static var MX2004 = 7;
	//public static var Flash8 = 8;
	//public static var CS3 = 9;
	//public static var CS4 = 10;
	//public static var CS5 = 11;
	//public static var CS6 = 12;
	//public static var CC = 13;
	//public static var CC2014 = 14;
	
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
		//var versionNumber = Type.enumIndex(name) + 5;
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