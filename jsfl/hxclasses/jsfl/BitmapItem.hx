package jsfl;

/**
 * A BitmapItem object refers to a bitmap in the library of a document.
 */
@:native("BitmapItem")
extern class BitmapItem extends Item {
	
	/**
	 * Exports the specified item to a PNG or JPG file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the path and name of the exported file.
	 * @param	quality A number, from 1-100, that determines the quality of the exported image file. A higher number indicates higher quality. The default is 80.
	 * @return A Boolean value of true if the file was exported successfully; false otherwise.
	 */
	public function exportToFile(fileURI:String, quality:Int):Bool;
	
	/**
	 * A Boolean value that specifies whether to allow smoothing of a bitmap (true) or not (false).
	 */
	public var allowSmoothing(default, default):Bool;
	
	/**
	 * A string that determines the type of image compression applied to the bitmap.
	 */
	public var compressionType(default, default):CompressionType;
	
	/**
	 * Read-only; The number of seconds that have elapsed between January 1, 1970 and the modification date of the original file.
	 */
	public var fileLastModifiedDate(default, null):String;
	
	/**
	 * Read-only; A Boolean value indicating whether the bitmap has an alpha channel.
	 * Availability: Flash CS6 Professional.
	 */
	public var hasValidAlphaLayer(default, null):Bool;
	
	/**
	 * Read-only; Specifies the width of the bitmap, in pixels.
	 * Availability: Flash CS6 Professional.
	 */
	public var hPixels(default, null):Int;
	
	/**
	 * Read-only; The modification date of the bitmap item in the Library.
	 * Availability: Flash CS6 Professional.
	 */
	public var lastModifiedDate(default, null):String;
	
	/**
	 * Read-only; Specifies whether the item was imported as an jpeg file.
	 */
	public var originalCompressionType(default, null):CompressionType;
	
	/**
	 * Available only for JPEG compression.
	 * An integer from 0 to 100 that specifies the quality of the bitmap. To use the default document quality, specify -1.
	 */
	public var quality(default, default):Int;
	
	/**
	 * Read-only; Specifies whether the file that was imported to the Library still exists in the location from where it was imported.
	 */
	public var sourceFileExists(default, null):Bool;
	
	/**
	 * Read-only; Specifies whether the file modification date of the Library item is the same as the modification date on disk of the file that was imported.
	 */
	public var sourceFileIsCurrent(default, null):Bool;
	
	/**
	 * Read-only; The path and name of the file that was imported into the Library.
	 */
	public var sourceFilePath(default, null):String;
	
	/**
	 * A Boolean value that specifies whether deblocking is enabled (true) or not (false).
	 */
	public var useDeblocking(default, default):Bool;
	
	/**
	 * A Boolean value that specifies whether to use the default imported JPEG quality.
	 */
	public var useImportedJPEGQuality(default, default):Bool;
	
	/**
	 * Read-only; Specifies the height of the bitmap, in pixels.
	 * Availability: Flash CS6 Professional.
	 */
	public var vPixels(default, null):Int;

}
