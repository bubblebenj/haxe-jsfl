package jsfl;

/**
 * A string that represents the type of the specified element. Acceptable values are:
	• "shape"
	• "text"
	• "tlfText" (Flash Pro CS5 and later)
	• "instance"
	• "shapeObj"
 */
@:fakeEnum(String)
extern enum ElementType {
	SHAPE;
	TEXT;
	TLF_TEXT;
	INSTANCE;
	SHAPE_OBJ;
}

@:native("jsfl.ElementType")
private class Impl {
	public static inline var SHAPE = "shape";
	public static inline var TEXT = "text";
	public static inline var TLF_TEXT = "tlfText";
	public static inline var INSTANCE = "instance";
	public static inline var SHAPE_OBJ = "shapeObj";
}
