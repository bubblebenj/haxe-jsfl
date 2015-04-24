package jsfl.haxe;

using StringTools;

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
	//FlashPro5;	// No jsfl yet
	//MX;		// No jsfl yet
	MX2004;
	FlashPro8;
	CS3;
	CS4;
	CS5;
	CS6;
	CC;
	CC2014;
}

@:native("jsfl_haxe_Utils")
class Utils {

	public static function getVersionNumber(name : VersionName) : Int {

		var versionNumber = switch (name) {
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
		return versionNumber;
	}
	
	static public function compareVersion(v0:Int, v1:Int):Int {
		return v0 - v1;
	}
	
	static public function compareVersion2(v0:VersionName, v1:VersionName):Int {
		return getVersionNumber(v0) - getVersionNumber(v1);
	}
}