package jsfl;

/**
 * Defines the type of data. Acceptable values are "integer", "integerArray", "double", "doubleArray", "string", and "byteArray".
 */
@:fakeEnum(String)
extern enum PersistentDataType {
	INTEGER;
	INTEGER_ARRAY;
	DOUBLE;
	DOUBLE_ARRAY;
	STRING;
	BYTE_ARRAY;
}

@:native("jsfl.PersistentDataType")
private class Impl {
	public static inline var INTEGER: String = "integer";
	public static inline var INTEGER_ARRAY: String = "integerArray";
	public static inline var DOUBLE: String = "double";
	public static inline var DOUBLE_ARRAY: String = "doubleArray";
	public static inline var STRING: String = "string";
	public static inline var BYTE_ARRAY: String = "byteArray";
}
