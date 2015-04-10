package jsfl;
	
/**
 * The compilerErrors object, which represents the Compiler Errors panel, is a property of the
 * flash object (fl) and can be accessed by fl.compilerErrors (see flash object (fl)).
 */
@:native("CompilerErrors")
@:build(jsfl.haxe.Config.build())
@:jsflVersion({ added: CS3 })
extern class CompilerErrors {
	
	/**
	 * Clears the contents of the Compiler Errors panel.
	 */
	@:jsflVersion({ added: CS3 })
	public function clear():Void;
	
	/**
	 * Saves the contents of the Compiler Errors panel to a local text file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the filename for the saved file. If fileURI already exists, and you haven’t specified a value of true for bAppendToFile, fileURI is overwritten without warning.
	 * @param	bAppendToFile An optional Boolean value that specifies whether the contents of the Compiler Errors panel should be appended to fileURI.
	 * @param	bUseSystemEncoding An optional Boolean value that specifies whether to save the Compiler Errors panel text using the system encoding. If this value is false (the default), the text is saved using UTF-8 with BOM.
	 */
	@:jsflVersion({ added: CS3 })
	public function save(fileURI:String, ?bAppendToFile:Bool = false, ?bUseSystemEncoding:Bool = false):Void;
	
}
