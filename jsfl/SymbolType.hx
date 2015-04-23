package jsfl;

/**
 * a string that specifies the type of symbol.
 * This property is equivalent to the value for Behavior in the Create New Symbol and Convert To Symbol dialog boxes.
 * Acceptable values are "button", "movie clip", and "graphic".
 */

@:fakeEnum(String)
extern enum SymbolType {
	MOVIE_CLIP;
	GRAPHIC;
	BUTTON;
}

@:native("jsfl.SymbolType")
private class Impl {
	public static inline var MOVIE_CLIP:String = "movie clip";
	public static inline var GRAPHIC:String = "graphic";
	public static inline var BUTTON:String = "button";
}
