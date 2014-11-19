package jsfl;

/**
 * a string that specifies the type of filter.
 * The value of this property determines which other properties of the Filter object are available.
 * Acceptable values are: "adjustColorFilter", "bevelFilter", "blurFilter", "dropShadowFilter", * "glowFilter", " gradientBevelFilter ", or " gradientGlowFilter ".
 */
@:fakeEnum(String)
extern enum FilterType {
	ADJUSTCOLOR;
	BEVEL;
	BLUR;
	DROPSHADOW;
	GLOW;
	GRADIENT_BEVEL;
	GRADIENT_GLOW;
}

@:native("jsfl.FilterType")
private class Impl {
	public static inline var ADJUSTCOLOR:String = "adjustColorFilter";
	public static inline var BEVEL:String = "bevelFilter";
	public static inline var BLUR:String = "blurFilter";
	public static inline var DROPSHADOW:String = "dropShadowFilter";
	public static inline var GLOW:String = "glowFilter";
	public static inline var GRADIENT_BEVEL:String = "gradientBevelFilter";
	public static inline var GRADIENT_GLOW:String = "gradientGlowFilter";
}
