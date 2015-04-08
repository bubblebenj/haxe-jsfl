package jsfl;

/**
 * a string that specifies the current use of the layer; equivalent to the Type setting in the Layer Properties dialog box.
 */

@:fakeEnum(String)
extern enum LayerType {
	NORMAL;
	GUIDE;
	GUIDED;
	MASK;
	MASKED;
	FOLDER;
}

@:native("jsfl.LayerType")
private class Impl {
	public static inline var NORMAL = "normal";
	public static inline var GUIDE = "guide";
	public static inline var GUIDED = "guided";
	public static inline var MASK = "mask";
	public static inline var MASKED = "masked";
	public static inline var FOLDER = "folder";
}
