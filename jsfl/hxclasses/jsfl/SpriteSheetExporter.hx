package jsfl;

/**
 * TODO A SymbolInstance or a SymbolItem
 */

/**
 * The SpriteSheetExporter object is a subclass of the Item object.
 */
@:native("SpriteSheetExporter")
@:build(jsfl.haxe.Config.build())
@:jsflVersion({ added: CS6 })
extern class SpriteSheetExporter extends Item {
	
	public function new();

	/**
	 * Adds a bitmap or bitmapItem to the sprite sheet.
	 * @param	bitmap The BitmapItem or Bitmap to include in the sprite sheet.
	 */
	public function addBitmap(bitmap:BitmapItem):Void;
	
	
	/**
	 * Adds a symbol to be used to generate the sprite sheet.
	 * @param	symbol The SymbolItem or SymbolInstance to include in the sprite sheet.
	 * @param	name The name of the symbol instance to add to the sprite sheet.
	 * @param	beginFrame The beginning frame of the symbol to include in the sprite sheet.
	 * @param	endFrame The last frame of the symbol to include in the sprite sheet.
	 * @return Boolean.
	 */
	@:overload(function (symbol:SymbolInstance, name:String, ?beginFrame:Int, ?endFrame:Int):Bool { } )
	public function addSymbol(symbol:SymbolItem):Bool;
	
	/**
	 * Initializes the SpriteSheetExporter to create a new sprite sheet.
	 */
	public function beginExport():Void;
	
	@:overload(function (symbol:SymbolInstance, ?beginFrame:Int, ?endFrame:Int):Bool { })
	/**
	 * Changes which symbol frames will be added to the sprite sheet.
	 * @param	symbol A SymbolItem or SymbolInstance that has already been added to the sprite sheet.
	 * @param	beginFrame The beginning frame of the symbol to include in the sprite sheet.
	 * @param	endFrame The last frame of the symbol to include in the sprite sheet.
	 * @return Boolean.
	 */
	public function changeSymbol(symbol:SymbolItem, ?beginFrame:Int, ?endFrame:Int):Bool;
	
	/**
	 * Export the sprite sheet into a an image file.
	 * @param	path String; A file path with no extension to be used as the base name of the exported files.
	 * @param	imageFormat String or Object. A string or an object that describes the type of image format to generate.
	 * 		• String: Valid values are either "png" or "jpg", the exporter use whatever values where last used.
	 * 		• Object: If you pass an object, it needs at least a string property "format" which is either "png" or "jpg". Optionally the object may include "backgroundColor," which is a valid color value (alpha may be included); "quality" (jpg only), which is an integer from 1 to 100; and "bitDepth" (png only) which can be 8, 24 or 32.
	 * @param	writeMetaData Whether or not to write the metadata file with the image file.
	 * @return String.
	 */
	public function exportSpriteSheet(path:String, imageFormat:Dynamic, ?writeMetaData:Bool = true):String;
	
	/**
	 * Remove a bitmap object from the sprite sheet.
	 * @param	bitmap The BitmapItem or Bitmap to remove from the sprite sheet.
	 */
	public function removeBitmap(bitmap:BitmapInstance):Void;
	
	@:overload(function (symbol:SymbolInstance):Bool { })
	/**
	 * Remove a symbol from the sprite sheet.
	 * @param	symbol The SymbolItem or SymbolInstance to remove from the sprite sheet.
	 * @return Boolean.
	 */
	public function removeSymbol(symbol:SymbolItem):Bool;
	
	/**
	 * Sets the encoding algorithm for the sprite sheet.
	 */
	public var algorithm(default, default):SpriteSheetExporterAlgorithm;
	
	/**
	 * Allows sprites to be rotated when added to the sprite sheet.
	 */
	public var allowRotate(default, default):Bool;
	
	/**
	 * Allows trimming of whitespace around sprites.
	 */
	public var allowTrimming(default, default):Bool;
	
	/**
	 * A string indicating the name of the application generating the sprite sheet.
	 */
	public var app(default, null):String;
	
	/**
	 * Automatically size the sprite sheet to fit all sprites.
	 */
	public var autoSize(default, default):Bool;
	
	/**
	 * The amount of padding around the sprite sheet borders, in pixels.
	 */
	public var borderPadding(default, default):Int;
	
	/**
	 * A Boolean value indicating whether border padding is supported by the
framework specified by the layoutFormat property.
	 */
	public var canBorderPad(default, null):Bool;
	
	/**
	 * A Boolean value indicating whether sprite rotation is supported by the
framework specified by the layoutFormat property.
	 */
	public var canRotate(default, null):Bool;
	
	/**
	 * A Boolean value indicating whether shape padding is supported by the
framework specified by the layoutFormat property.
	 */
	public var canShapePad(default, null):Bool;
	
	/**
	 * A Boolean value indicating whether sprite stacking is supported by the
framework specified by the layoutFormat property.
	 */
	public var canStackDuplicateFrames(default, null):Bool;
	
	/**
	 * A Boolean value indicating whether shape trimming is supported by the
framework specified by the layoutFormat property.
	 */
	public var canTrim(default, null):Bool;
	
	/**
	 * The format of the sprite sheet image file.
	 */
	public var format(default, null):SpriteSheetExporterFormat;
	
	/**
	 * The name of the image file of the sprite sheet.
	 */
	public var image(default, null):String;
	
	/**
	 * The format of the sprite sheet metadata.
	 */
	public var layoutFormat(default, default):SpriteSheetExporterLayoutFormat;
	
	/**
	 * Controls the maximum height of the generated sprite sheet when autoSize = true, clipped to a maximum value of 8192.
	 */
	@:jsflVersion({ added: CC })
	public var maxSheetHeight(default, default):Int;
	
	/**
	 * Controls the maximum width of the generated sprite sheet when autoSize = true, clipped to a maximum value of 8192.
	 */
	@:jsflVersion({ added: CC })
	public var maxSheetWidth(default, default):Int;
	
	/**
	 * A Boolean value indicating whether all the specified frames can fit in the specified sprite sheet size.
	 */
	public var overflowed(default, null):Bool;
	
	/**
	 * The amount of padding around each sprite, in pixels.
	 */
	public var shapePadding(default, default):Int;
	
	/**
	 * The height of the sprite sheet, in pixels.
	 */
	public var sheetHeight(default, default):Int;
	
	/**
	 * The width of the sprite sheet, in pixels.
	 */
	public var sheetWidth(default, default):Int;
	
	/**
	 * A Boolean value indicating whether to stack identical symbol frames in the sprite sheet.
	 */
	public var stackDuplicateFrames(default, default):Bool;
	
	/**
	 * The version number of the application creating the sprite sheet.
	 */
	public var version(default, null):String;

}

@:enum abstract SpriteSheetExporterAlgorithm(String) {
	var BASIC = "basic";
	var MAX_RECTS = "maxRects";
}

@:enum abstract SpriteSheetExporterFormat(String) {
	var RGBA8888 = "RGBA8888";
	var RGB888x = "RGB888x";
	var RGB8 = "RGB8";
}

@:enum abstract SpriteSheetExporterLayoutFormat(String) {
	var COCOS2D_V2 = "cocos2dv2";
	var COCOS2D_V3 = "cocos2dv3";
	var EASEL_JS = "easeljs";
	var JSON = "JSON";
	var JSON_ARRAY = "JSON-Array";
	var SPARROW_V1 = "Sparrow-v1";
	var SPARROW_V2 = "Sparrow-v2";
	var STARLING = "Starling";
}
