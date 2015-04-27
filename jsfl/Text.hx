package jsfl;

/**
 * The Text object represents a single text item in a document. All properties of the text pertain to the entire text block.
 * To set properties of a text run within the text field, see the Property summary for the TextAttrs object.
 * To change properties of a selection within a text field, you can use document.setElementTextAttr() and specify a range of text, or use the current selection.
 * To set generic properties of the selected text field, use document.setElementProperty().
 */
@:native("Element")
@:build(jsfl.haxe.Config.build())
extern class Text extends Element {

	/**
	 * Retrieves the specified attribute for the text identified by the optional startIndex and endIndex parameters.
	 * @param	attrName A string that specifies the name of the TextAttrs object property to be returned. For a list of possible values for attrName, see the Property summary for the TextAttrs object.
	 * @param	startIndex An integer that is the index of first character.
	 * @param	endIndex An integer that specifies the end of the range of text, which starts with startIndex and goes up to, but does not include, endIndex.
	 * @return The value of the attribute specified in the attrName parameter.
	 */ 
	public function getTextAttr(attrName: String, ?startIndex: Int, ?endIndex: Int): Dynamic;
	
	/**
	 * Retrieves the specified range of text.
	 * @param	startIndex An integer that specifies the index (zero-based) of the first character.
	 * @param	endIndex An integer that specifies the end of the range of text, which starts from startIndex and goes up to, but does not include, endIndex.
	 * @return A string of the text in the specified range.
	 */
	public function getTextString(?startIndex: Int, ?endIndex: Int): String;
	

	/**
	 * Sets the specified attribute associated with the text identified by startIndex and endIndex 
	 * @param	attrName A string that specifies the name of the TextAttrs object property to change.
	 * @param	attrValue The value for the TextAttrs object property.
	 * @param	startIndex An integer that is the index (zero-based) of the first character in the array.
	 * @param	endIndex An integer that specifies the index of the end point in the selected text string, which starts at startIndex and goes up to, but does not include, endIndex.
	 */
	public function setTextAttr(attrName: String, attrValue: Dynamic, ?startIndex: Int, ?endIndex: Int): Void;
	
	/**
	 * Changes the text string within this Text object.
	 * @param	text A string that consists of the characters to be inserted into this Text object.
	 * @param	startIndex An integer that specifies the index (zero-based) of the character in the string where the text will be inserted.
	 * @param	endIndex An integer that specifies the index of the end point in the selected text string. The new text overwrites the text from startIndex up to, but not including, endIndex.
	 */
	public function setTextString(text: String, ?startIndex: Int, ?endIndex: Int): Void;
	
	/**
	 * A string that is equivalent to the Name field in the Accessibility panel.
	 */
	public var accName(default, default): String;
	
	/**
	 * A float value that specifies the anti-aliasing sharpness of the text.
	 */
	@:jsflVersion({ added: Flash8 })
	public var antiAliasSharpness(default, default): Float;
	
	/**
	 * A float value that specifies the anti-aliasing thickness of the text.
	 */
	@:jsflVersion({ added: Flash8 })
	public var antiAliasThickness(default, default): Float;
	
	/**
	 * A Boolean value that controls the expansion of the bounding width for static text fields or the bounding width and height for dynamic or input text.
	 */
	public var autoExpand(default, default): Bool;
	
	/**
	 * A Boolean value that controls whether Flash shows (true) or hides (false) a border around dynamic or input text.
	 */
	public var border(default, default): Bool;
	
	/**
	 * A string that is equivalent to the Description field in the Accessibility panel.
	 */
	public var description(default, default): String;
	
	/**
	 * A string that specifies characters to embed. This is equivalent to entering text in the Character Embedding dialog box.
	 */
	public var embeddedCharacters(default, default): String;
	
	/**
	 * A string that consists of delimited integers that correspond to the items that can be selected in the Character Embedding dialog box.
	 */
	public var embedRanges(default, default): String;
	
	/**
	 * A Boolean value that specifies whether to enable the embedding of variant glyphs.
	 */
	@:jsflVersion({ added: CS4 })
	public var embedVariantGlyphs(default, default): Bool;
	
	/**
	 * An array of filters applied to the text element
	 */
	@:jsflVersion({ added: CS6 })
	public var filters(default, default): Array<Filter>;
	
	/**
	 * A string that specifies the rendering mode for the text.
	 */
	@:jsflVersion({ added: Flash8 })
	public var fontRenderingMode(default, default): FontRenderingMode;
	
	/**
	 * Read-only; an integer that represents the number of characters in the Text object.
	 */
	public var length(default, null): Int;
	
	/**
	 * A string that sets the line type. 
	 */
	public var lineType(default, default): LineType;
	
	/**
	 * An integer that specifies the maximum characters the user can enter into this Text object.
	 */
	public var maxCharacters(default, default): Int;
	
	/**
	 * A string that specifies the orientation of the text field.
	 */
	public var orientation(default, default): String;
	
	/**
	 * A Boolean value that controls whether Flash draws the text as HTML and interprets embedded HTML tags.
	 */
	public var renderAsHTML(default, default): Bool;
	
	/**
	 * A Boolean value that controls whether the text can (true) or cannot (false) be scrolled.
	 */
	public var scrollable(default, default): Bool;
	
	/**
	 * A Boolean value that controls whether the text can (true) or cannot (false) be selected. Input text is always selectable.
	 */
	public var selectable(default, default): Bool;
	
	/**
	 * A zero-based integer that specifies the offset of the end of a text subselection.
	 */
	public var selectionEnd(default, default): Int;
	
	/**
	 * A zero-based integer that specifies the offset of the beginning of a text subselection.
	 */
	public var selectionStart(default, default): Int;
	
	/**
	 * A string that is equivalent to the Shortcut field in the Accessibility panel.
	 */
	public var shortcut(default, default): String;
	
	/**
	 * A Boolean value that specifies whether the object is accessible.
	 */
	public var silent(default, default): Bool;
	
	/**
	 * An integer that is equivalent to the Tab Index field in the Accessibility panel.
	 */
	public var tabIndex(default, default): Int;
	
	/**
	 * Read-only; an array of TextRun objects.
	 */
	public var textRuns(default, default): Array<TextRun>;
	
	/**
	 * A string that specifies the type of text field.
	 */
	public var textType(default, default): TextType;
	
	/**
	 * A Boolean value. A value of true causes Flash to draw text using device fonts.
	 */
	public var useDeviceFonts(default, default): Bool;
	
	/**
	 * A string that contains the contents of the Text object.
	 */
	public var variableName(default, default): String;
	
}

@:enum abstract FontRenderingMode(String) {
	var DEVICE = "device";
	var BITMAP = "bitmap";
	var STANDARD = "standard";
	var ADVANCED = "advanced";
	var CUSTOM_THICKNESS_SHARPNESS = "customThicknessSharpness";
}

@:enum abstract LineType(String) {
	var SINGLE_LINE = "single line";
	var MULTILINE = "multiline";
	var MULTILINE_NO_WRAP = "multiline no wrap";
	var PASSWORD = "password";
}

@:enum abstract TextType(String) {
	var STATIC = "static";
	var DYNAMIC = "dynamic";
	var INPUT = "input";
}
