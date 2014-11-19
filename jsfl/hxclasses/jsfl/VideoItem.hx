package jsfl;

@:native("VideoItem")
extern class VideoItem extends Item {
	
	/**
	 * Exports the specified item to an FLV file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the path and name of the exported file.
	 * @return A Boolean value of true if the file is exported successfully; false otherwise.
	 */
	public function exportToFLV(fileURI:String):Bool;

	/**
	 * Read-only; a string containing a hexadecimal number that represents the number of seconds that have elapsed between January 1, 1970, and
	 * the modification date of the original file (on disk) at the time the file was imported to the library.
	 */
	public var fileLastModifiedDate(default, null):Dynamic;

	/**
	 * Read-only; the modification date of the video item in the Library.
	 */
	public var lastModifiedDate(default, null):Dynamic;

	/**
	 * Read-only; a Boolean value that specifies whether the file that was imported to the Library still exists in the location from where it was imported.
	 */
	public var sourceFileExists(default, null):Bool;

	/**
	 * Read-only; a Boolean value that specifies whether the file modification date of the Library item is the same as
	 * the modification date (on disk) of the file that was imported.
	 */
	public var sourceFileIsCurrent(default, null):Bool;

	/**
	 * Read-only; a string that specifies the path to the video item.
	 */
	public var sourceFilePath(default, null):String;

	/**
	 * Read-only; a string that specifies the type of video the item represents.
	 */
	public var videoType(default, null):VideoType;

}
