package jsfl;

/**
 * The fontItem object is a subclass of the Item object (see Item object).
 */
@:native("FontItem")
extern class FontItem extends Item {

	/**
	 * Specifies whether the Font item is bitmapped.
	 */
	@:require(flpro_version >= CS4)
	public var bitmap(default, default):Bool;
	
	/**
	 * Specifies whether the Font item is bold.
	 */
	@:require(flpro_version >= CS4)
	public var bold(default, default):Bool;
	
	/**
	 * Specifies characters to embed.
	 */
	@:require(flpro_version >= CS5)
	public var embeddedCharacters(default, default):String;
	
	/**
	 * Specifies items that can be selected in the Font Embedding dialog.
	 */
	@:require(flpro_version >= CS5)
	public var embedRanges(default, default):String;
	
	/**
	 * Specifies whether variant glyphs should be output in the font when publishing a SWF file.
	 */
	@:require(flpro_version >= CS4)
	public var embedVariantGlyphs(default, default):Bool;
	
	/**
	 * The name of the device font associated with the Font item.
	 * If you enter a string that does not correspond to an installed device font, an error message is displayed. 
	 * To determine if a font exists on the system, use  fl.isFontInstalled() 
	 */
	@:require(flpro_version >= CS4)
	public var font(default, default):String;
	
	/**
	 * Specifies the format of the font that is output when publishing a SWF filem.
	 */
	@:require(flpro_version >= CS4)
	public var isDefineFont4Symbol(default, default):Bool;
	
	/**
	 * Specifies whether the Font item is italic.
	 */
	@:require(flpro_version >= CS4)
	public var italic(default, default):Bool;
	
	/**
	 * The size of the Font item, in points.
	 */
	@:require(flpro_version >= CS4)
	public var size(default, default):Int;

}
