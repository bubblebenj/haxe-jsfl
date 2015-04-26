package jsfl;

import jsfl.Math;

/**
 * The SymbolItem object is a subclass of the Item object.
 */
@:native("SymbolItem")
@:build(jsfl.haxe.Config.build())
extern class SymbolItem extends Item {

	/**
	 * Converts a symbol item in the library to a compiled movie clip.
	 */
	public function convertToCompiledClip():Void;
	
	/**
	 * Exports the symbol item to a SWC file.
	 * @param	outputURI A string, expressed as a file:/// URI, that specifies the SWC file to which the method will export the symbol. The outputURI must reference a local file. Flash does not create a folder if outputURI does not exist.
	 */
	public function exportSWC(outputURI:String):Void;
	
	/**
	 * Exports the symbol item to a SWF file.
	 * @param	outputURI A string, expressed as a file:/// URI, that specifies the SWF file to which the method will export the symbol. The outputURI must reference a local file. Flash does not create a folder if outputURI doesn’t exist.
	 */
	public function exportSWF(outputURI:String):Void;
	
	/**
	 * Export an instance to a new bitmap in the Library.
	 * @param	frameNumber An integer indicating the frame within the symbol to be exported.
	 * @param	bitmapName A string indicating the name of the new bitmap to be added to the Library.
	 */
	@:jsflVersion({ added: CS6 })
	public function exportToLibrary(frameNumber:Int, bitmapName:String):Void;
	
	/**
	 * Export a symbol to a sequence of PNG files.
	 * @param	outputURI The URI to export the PNG sequence files to. This URI must reference a local file. For example: file:///c|/tests/mytest.png.
	 * @param	startFrameNum An integer indicating the first frame within the symbol to be exported. If this parameter is omitted, all frames are exported.
	 * @param	endFrameNum An integer indicating the last frame within the symbol to be exported. If this parameter is omitted, all frames are exported.
	 * @param	matrix A matrix to be appended to the exported PNG sequence.
	 */
	@:jsflVersion({ added: CS6 })
	public function exportToPNGSequence(outputURI:String, ?startFrameNum:Int, ?endFrameNum:Int, ?matrix:Matrix = null):Void;
	
	/**
	 * A string hexadecimal value that indicates the modification date of the symbol.
	 */
	@:jsflVersion({ added: CS6 })
	public var lastModifiedDate(default, null):String;
	
	/**
	 * A Boolean value that specifies whether 9-slice scaling is enabled for the item.
	 */
	@:jsflVersion({ added: Flash8 })
	public var scalingGrid(default, default):Bool;
	
	/**
	 * A Rectangle object that specifies the locations of the four 9-slice guides. For information on the format of the rectangle, see  document.addNewRectangle() 
	 */
	@:jsflVersion({ added: Flash8 })
	public var scalingGridRect(default, default):JSFLRect;
	
	/**
	 * A Boolean value that specifies whether the item is updated when the FLA file is published.
	 */
	public var sourceAutoUpdate(default, default):Bool;
	
	/**
	 * A string that specifies the path for the source FLA file as a file:/// URI.
	 */
	public var sourceFilePath(default, default):String;
	
	/**
	 * A string that specifies the name of the item in the source file library.
	 */
	public var sourceLibraryName(default, default):String;
	
	/**
	 * A string that specifies the type of symbol.
	 */
	public var symbolType(default, default):SymbolType;
	
	/**
	 * Read-only; a Timeline object.
	 */
	public var timeline(default, null):Timeline;

}