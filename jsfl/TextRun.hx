package jsfl;

/**
 * The TextRun object represents a run of characters that have attributes that match all of the properties in the TextAttrs object.
 * This object is a property of the Text object (text.textRuns).
 */
@:native("TextRun")
@:build(jsfl.haxe.Config.build())
extern class TextRun {
	
	/**
	 * A string that represents the text contained in the TextRun object.
	 */
	public var characters(default, default): String;

	/**
	 * The TextAttrs object containing the attributes of the run of text.
	 */
	public var textAttrs(default, default): TextAttrs;

}