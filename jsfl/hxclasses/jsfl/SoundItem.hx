package jsfl;

/**
 * The SoundItem object is a subclass of the Item object.
 * It represents a library item used to create a sound.
 * See also frame.soundLibraryItem and Item object.
 */
@:native("SoundItem")
@:build(jsfl.haxe.Config.build())
extern class SoundItem extends Item {
	
	/**
	 * Exports the specified item to an MP3 or WAV file (Macintosh and Windows).
	 * @param	fileURI
	 * @return
	 */
	@:jsflVersion({ added: CS4 })
	public function exportToFile(fileURI:String):Bool;
	
	/**
	 * A string that specifies the bit rate of a sound in the library. Available only for the MP3 compression type.
	 */
	public var bitRate(default, default):String;
	
	/**
	 * A string that specifies the bits value for a sound in the library that has ADPCM compression.
	 */
	public var bits(default, default):String;
	
	/**
	 * A string that specifies the compression type for a sound in the library.
	 */
	public var compressionType(default, default):String;
	
	/**
	 * A Boolean value available only for MP3 and Raw compression types.
	 */
	public var convertStereoToMono(default, default):Bool;
	
	/**
	 * Read-only; a string containing a hexadecimal number that represents the number of seconds that have elapsed between January 1, 1970, and the modification date of the original file (on disk) at the time the file was imported to the library.
	 */
	@:jsflVersion({ added: CS4 })
	public var fileLastModifiedDate(default, null):String;
	
	/**
	 * Read-only; the modification date of the sound item in the Library.
	 */
	@:jsflVersion({ added: CS6 })
	public var lastModifiedDate(default, null):String;
	
	/**
	 * Read-only; a string that specifies whether the specified item was imported as an MP3 file.
	 */
	@:jsflVersion({ added: CS4 })
	public var originalCompressionType(default, null):String;
	
	/**
	 * A string that specifies the playback quality of a sound in the library. Available only for the MP3 compression type.
	 */
	public var quality(default, default):String;
	
	/**
	 * A string that specifies the sample rate for the audio clip.
	 */
	public var sampleRate(default, default):String;
	
	/**
	 * Read-only; a Boolean value that specifies whether the file that was imported to the Library still exists in the location from where it was imported.
	 */
	@:jsflVersion({ added: CS4 })
	public var sourceFileExists(default, null):Bool;
	
	/**
	 * Read-only; a Boolean value that specifies whether the file modification date of the Library item is the same as the modification date on disk of the file that was imported.
	 */
	@:jsflVersion({ added: CS4 })
	public var sourceFileIsCurrent(default, null):Bool;
	
	/**
	 * Read-only; a string, expressed as a file:/// URI, that represents the path and name of the file that was imported into the Library.
	 */
	@:jsflVersion({ added: CS4 })
	public var sourceFilePath(default, null):String;
	
	/**
	 * A Boolean value; if  true , all other properties are ignored, and the imported MP3 quality is used.
	 */
	public var useImportedMP3Quality:Bool;

}