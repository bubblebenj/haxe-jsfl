package jsfl;


/**
 * The FLfile object lets you write Flash extensions that can access, modify, and remove files and folders on the local file system. The FLfile API is provided in the form of an extension to the JavaScript API.
 * This extension is called a shared library and is located in the following folder:
 *	 • Windows 7 and 8:
 * 		boot drive\Users\username\AppData\Local\Adobe\Flash CC\language\Configuration\External Libraries\FLfile.dll
 *	 • Mac OS X:
 * 		Macintosh HD/Users/username/Library/Application Support/Adobe/Flash CC/language/Configuration/ExternalLibraries/FLfile.dll
 *	Note: Don't confuse the shared libraries that contain symbols in your Flash documents with the JavaScript API shared libraries. They are two different things.
 */
@:native("FLfile")
@:build(jsfl.haxe.Config.build())
extern class FLfile {

	/**
	 * Copies a file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the file you want to copy.
	 * @param	copyURI A string, expressed as a file:/// URI, that specifies the location and name of the copied file.
	 * @return A Boolean value of true if successful; false otherwise.
	 */
	public static function copy(fileURI: String, copyURI: String): Bool;

	/**
	 * Creates one or more folders.
	 * @param	folderURI A folder URI that specifies the folder structure you want to create.
	 * @return A Boolean value of true if successful; false if folderURI already exists.
	 */
	public static function createFolder(folderURI: String): Bool;
	
	/**
	 * Determines the existence of a file or folder.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the file you want to verify.
	 * @return A Boolean value of true if successful; false otherwise.
	 */
	public static function exists(fileURI: String): Bool;
	
	/**
	 * Finds out whether a file is writable, read-only, hidden, visible, or a system folder.
	 * @param	fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder whose attributes you want to retrieve.
	 * @return A string that represents the attributes of the specified file or folder. Results are unpredictable if the file or folder doesn’t exist. You should use FLfile.exists() before using this method.
	 */
	public static function getAttributes(fileOrFolderURI: String): String;
	
	/**
	 * Specifies how many seconds have passed between January 1, 1970 and the time the file or folder was created.
	 * @param	fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder whose creation date and time you want to retrieve as a hexadecimal string.
	 * @return A string containing a hexadecimal number that represents the number of seconds that have elapsed between January 1, 1970 and the time the file or folder was created, or "00000000" if the file or folder doesn’t exist.
	 */
	public static function getCreationDate(fileOrFolderURI: String): String;
	
	/**
	 * Gets the date a file or folder was created.
	 * @param	fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder whose creation date and time you want to retrieve as a JavaScript Date object.
	 * @return A JavaScript Date object that represents the date and time when the specified file or folder was created. If the file doesn’t exist, the object contains information indicating that the file or folder was created at midnight GMT on December 31, 1969.
	 */
	public static function getCreationDateObj(fileOrFolderURI: String): Date;

	/**
	 * Specifies how many seconds have passed between January 1, 1970 and the time the file or folder was last modified.
	 * @param	fileOrFolderURI A string, expressed as a file:/// URI, specifying the file whose modification date and time you want to retrieve as a hexadecimal string.
	 * @return A string containing a hexadecimal number that represents the number of seconds that have elapsed between January 1, 1970 and the time the file or folder was last modified, or "00000000" if the file doesn’t exist.
	 */
	public static function getModificationDate(fileOrFolderURI: String): String;
	
	/**
	 * Gets the date a file or folder was last modified.
	 * @param	fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder whose modification date and time you want to retrieve as a JavaScript Date object.
	 * @return A JavaScript Date object that represents the date and time when the specified file or folder was last modified. If the file or folder doesn’t exist, the object contains information indicating that the file or folder was created at midnight GMT on December 31, 1969.
	 */
	public static function getModificationDateObj(fileOrFolderURI: String): Date;
	
	/**
	 * Gets the size of a file.
	 * @param	fileURI A string, expressed as a file:/// URI, specifying the file whose size you want to retrieve.
	 * @return An integer that represents the size of the specified file, in bytes, or 0 if the file doesn’t exist.
	 */
	public static function getSize(fileURI: String): Int;

	
	/**
	 * Lists the contents of a folder.
	 * @param	folderURI A string, expressed as a file:/// URI, specifying the folder whose contents you want to retrieve. You can
include a wildcard mask as part of folderURI. Valid wildcards are * (matches one or more characters) and ? (matches
a single character).
	 * @param	filesOrDirectories An optional string that specifies whether to return only filenames or only folder (directory)
names. If omitted, both filenames and folder names are returned. Acceptable values are "files" and "directories" 
	 * @return An array of strings representing the contents of the folder. If the folder doesn’t exist or if no files or folders match the specified criteria, returns an empty array.
	 */
	public static function listFolder(folderURI: String, ?filesOrDirectories:  String = null): Array<String>;
	
	/**
	 * Converts a filename in a platform-specific format to a file:/// URI.
	 * @param	fileName A string, expressed in a platform-specific format, specifying the filename you want to convert.
	 * @return A string expressed as a file:/// URI.
	 */	
	@:jsflVersion({ added: CS4 })
	public static function platformPathToURI(fileName: String): String;

	/**
	 * Reads the contents of a file.
	 * @param	fileURI A string, expressed as a file:/// URI, specifying the text-based file (such as.js,.txt, or.jsfl) that you want to read.
	 * @return The contents of the specified file as a string, or null if the read fails.
	 */
	public static function read(fileURI: String): String;
	
	/**
	 * Deletes a file or folder.
	 * @param	fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder you want to remove (delete).
	 * @return A Boolean value of true if successful; false otherwise.
	 */
	public static function remove(fileOrFolderURI: String): Bool;
	
	/**
	 * Makes a file or folder read-only, writable, hidden, or visible.
	 * @param	fileURI A string, expressed as a file:/// URI, specifying the file whose attributes you want to set.
	 * @param	strAttrs A string specifying values for the attribute(s) you want to set. For acceptable values for strAttrs, see the
“Description” section below.
	 * @return A Boolean value of true if successful.
	 */
	public static function setAttributes(fileURI: String, strAttrs: String): Bool;
	
	/**
	 * Converts a filename expressed as a file:/// URI to a platform-specific format.
	 * @param	fileURI A string, expressed as a file:/// URI, specifying the filename you want to convert.
	 * @return A string representing a platform-specific path.
	 */
	@:jsflVersion({ added: CS4 })
	public static function uriToPlatformPath(fileURI: String): String;
	
	/**
	 * Creates, writes to, or appends to a file.
	 * @param	fileURI A string, expressed as a file:/// URI, specifying the file to which you want to write.
	 * @param	textToWrite A string representing the text you want to place in the file.
	 * @param	strAppendMode An optional string with the value "append", which specifies that you want to append textToWrite to the existing file. If omitted, fileURI is overwritten with textToWrite.
	 * @return A Boolean value of true if successful; false otherwise.
	 */
	public static function write(fileURI: String, textToWrite: String, ?strAppendMode: String = null): Bool;

}