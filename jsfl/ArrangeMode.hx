package jsfl;

/**
 * Used by document.arrange()
 * Acceptable values are "back", "backward", "forward", and "front"
 */

@:fakeEnum(String)
extern enum ArrangeMode {
	BACK;
	BACKWARD;
	FORWARD;
	FRONT;
}

@:native("jsfl.ArrangeMode")
private class Impl {
	public static inline var BACK: String = "back";
	public static inline var BACKWARD: String = "backward";
	public static inline var FORWARD: String = "forward";
	public static inline var FRONT: String = "front";
}
