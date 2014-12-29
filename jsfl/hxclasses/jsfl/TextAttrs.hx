package jsfl;

/**
 * The TextAttrs object contains all the properties of text that can be applied to a subselection.
 * This object is a property of the TextRun object (textRun.textAttrs).
 */
@:native("TextAttrs")
extern class TextAttrs {
	
	/**
	 * A Boolean value that specifies that Flash should draw the text using a method optimized for increasing the legibility of small text.
	 */
	public var aliasText(default, default):Bool;
	
	/**
	 * A string that specifies paragraph justification. Acceptable values are "left", "center", "right", and "justify" 
	 */
	public var alignment(default, default):String;
	
	/**
	 * A Boolean value that determines whether Flash uses (true) or ignores (false) pair kerning information in the font(s) to kern the text.
	 */
	public var autoKern(default, default):Bool;
	
	/**
	 * A Boolean value. A value of true causes text to appear with the bold version of the font.
	 */
	public var bold(default, default):Bool;
	
	/**
	 * A string that determines the baseline for the text.
	 */
	public var characterPosition(default, default):String;
	
	/**
	 * Deprecated in favor of textAttrs.letterSpacing. An integer that represents the space between characters.
	 */
	public var characterSpacing(default, default):Int;
	
	/**
	 * A string that represents the name of the font, such as "Arial" 
	 */
	public var face(default, default):String;
	
	/**
	 * A string, hexadecimal value, or integer that represents the fill color.
	 */
	public var fillColor(default, default):Dynamic;
	
	/**
	 * An integer that specifies paragraph indentation.
	 */
	public var indent(default, default):Int;
	
	/**
	 * A Boolean value. A value of true causes text to appear with the italic version of the font.
	 */
	public var italic(default, default):Bool;
	
	/**
	 * An integer that specifies the paragraph’s left margin.
	 */
	public var leftMargin(default, default):Int;
	
	/**
	 * An integer that represents the space between characters.
	 */
	@:require(flpro_version >= Flash8)
	public var letterSpacing(default, default):Int;
	
	/**
	 * An integer that specifies the line spacing (leading) of the paragraph
	 */
	public var lineSpacing(default, default):Int;
	
	/**
	 * An integer that specifies the paragraph’s right margin.
	 */
	public var rightMargin(default, default):Int;
	
	/**
	 * A Boolean value. A value of true causes Flash to rotate the characters of the text 90°. The default value is false 
	 */
	public var rotation(default, default):Bool;
	
	/**
	 * An integer that specifies the size of the font.
	 */
	public var size(default, default):Int;
	
	/**
	 * A string that represents the target property of the text field.
	 */
	public var target(default, default):String;
	
	/**
	 * A string that represents the URL property of the text field.
	 */
	public var url(default, default):String;
	
}
