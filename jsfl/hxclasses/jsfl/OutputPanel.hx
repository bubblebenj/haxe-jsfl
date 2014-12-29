package jsfl;

/**
 * This object represents the Output panel, which displays troubleshooting information such as syntax errors.
 * To access this object, use fl.outputPanel (or flash.outputPanel). See fl.outputPanel.
 */
@:native("OutputPanel")
extern class OutputPanel {
	
	/**
	 * Clears the contents of the Output panel.
	 */
	public function clear():Void;
	
	/**
	 * Saves the contents of the Output panel to a local text file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the local file to contain the contents of the Output panel.
	 * @param	bAppendToFile A Boolean value. If true, it appends the Output panel’s contents to the output file, and if false, the method overwrites the output file if it already exists.
	 * @param	bUseSystemEncoding A Boolean value. If true, it saves the Output panel text using the system encoding; if false, it saves the Output panel text using UTF-8 encoding, with Byte Order Mark characters at the beginning of the text. Parameter added in Flash 8
	 */
	#if flpro_version >= Flash8
	public function save(fileURI:String, ?bAppendToFile:Bool = false, ?bUseSystemEncoding:Bool = false):Void;
	#else
	public function save(fileURI:String, ?bAppendToFile:Bool = false):Void;
	#end
	
	/**
	 * Adds a line to the contents of the Output panel, terminated by a new line.
	 * @param	message A string that contains the text to add to the Output panel.
	 */
	public function trace(message:String):Void;
	
}