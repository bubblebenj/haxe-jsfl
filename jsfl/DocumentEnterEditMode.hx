package jsfl;

/**
 * Used by document.enterEditMode()
 * A string that specifies the editing mode of a document. Acceptable values are "inPlace" or "newWindow". 
 */
@:fakeEnum(String)
extern enum DocumentEnterEditMode {
	IN_PLACE;
	NEW_WINDOW;
}

@:native("jsfl.DocumentEnterEditMode")
private class Impl {
	public static inline var IN_PLACE = "inPlace";
	public static inline var NEW_WINDOW = "newWindow";
}
