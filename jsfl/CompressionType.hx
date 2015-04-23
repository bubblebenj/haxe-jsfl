package jsfl;

/**
 * Used by bitmapItem class
 * Acceptable values are "photo" or "lossless".
 */
@:fakeEnum(String)
extern enum CompressionType {
	PHOTO;
	LOSSLESS;
}

@:native("jsfl.CompressionType")
private class Impl {
	public static inline var PHOTO:String = "photo";
	public static inline var LOSSLESS:String = "lossless";
}
