package jsfl;

/**
 * a string that specifies the type of video the item represents.
 */

@:fakeEnum(String)
extern enum VideoType {
	EMBEDDED_VIDEO;
	VIDEO;
}

@:native("jsfl.VideoType")
private class Impl {
	public static inline var EMBEDDED_VIDEO:String = "embedded video";
	public static inline var VIDEO:String = "video";
}
