package jsfl;

// Used by symbolInstance.colorMode
// Acceptable values are "none", "brightness", "tint", "alpha", and "advanced" .

@:fakeEnum(String)
extern enum ColorMode {
	NONE;
	BRIGHTNESS;
	TINT;
	ALPHA;
	ADVANCED;
}

@:native("jsfl.ColorMode")
private class Impl {
	public static inline var NONE:String = "none";
	public static inline var BRIGHTNESS:String = "brightness";
	public static inline var TINT:String = "tint";
	public static inline var ALPHA:String = "alpha";
	public static inline var ADVANCED:String = "advanced";
}
