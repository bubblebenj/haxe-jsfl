package jsfl;

/**
 * Used by Parameter.valueType
 * A string that indicates the type of the screen or component parameter.
 */
@:fakeEnum(String)
extern enum ParameterType {
	DEFAULT;
	ARRAY;
	OBJECT;
	LIST;
	STRING;
	NUMBER;
	BOOLEAN;
	FONT_NAME;
	COLOR;
	COLLECTION;
	WEB_SERVICE_URL;
	WEB_SERVICE_OPERATION;
}

@:native("jsfl.ParameterType")
private class Impl {
	public static inline var DEFAULT:String = "Default";
	public static inline var ARRAY:String = "Array";
	public static inline var OBJECT:String = "Object";
	public static inline var LIST:String = "List";
	public static inline var STRING:String = "String";
	public static inline var NUMBER:String = "Number";
	public static inline var BOOLEAN:String = "Boolean";
	public static inline var FONT_NAME:String = "Font Name";
	public static inline var COLOR:String = "Color";
	public static inline var COLLECTION:String = "Collection";
	public static inline var WEB_SERVICE_URL:String = "Web Service URL";
	public static inline var WEB_SERVICE_OPERATION:String = "Web Service Operation";
}
