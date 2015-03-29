package jsfl;

@:native("VideoItem")
extern class VideoItem extends Item {
	
	/**
	 * Exports the specified item to an FLV file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the path and name of the exported file.
	 * @return A Boolean value of true if the file is exported successfully; false otherwise.
	 */
	@:require(jsfl_version >= CS4)
	public function exportToFLV(fileURI:String):Bool;

	/**
	 * Read-only; a string containing a hexadecimal number that represents the number of seconds that have elapsed between January 1, 1970, and
	 * the modification date of the original file (on disk) at the time the file was imported to the library.
	 */
	@:require(jsfl_version >= CS4)
	public var fileLastModifiedDate(default, null):Int;
	
	/**
	 * Read-only; the modification date of the video item in the Library.
	 */
	@:require(jsfl_version >= CS6)
	public var lastModifiedDate(default, null):Dynamic;

	/**
	 * Read-only; a Boolean value that specifies whether the file that was imported to the Library still exists in the location from where it was imported.
	 */
	@:require(jsfl_version >= CS4)
	public var sourceFileExists(default, null):Bool;

	/**
	 * Read-only; a Boolean value that specifies whether the file modification date of the Library item is the same as
	 * the modification date (on disk) of the file that was imported.
	 */
	@:require(jsfl_version >= CS4)
	public var sourceFileIsCurrent(default, null):Bool;

	/**
	 * Read-only; a string that specifies the path to the video item.
	 */
	@:require(jsfl_version >= FlashPro8)
	public var sourceFilePath(default, null):String;

	/**
	 * Read-only; a string that specifies the type of video the item represents.
	 */
	@:require(jsfl_version >= FlashPro8)
	public var videoType(default, null):VideoType;

}