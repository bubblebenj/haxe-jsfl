package jsfl;

/**
 * The flash object represents the Flash application.
 * You can use flash or fl to refer to this object.
 * This documentation uses fl in code samples throughout.
 */
@:native("Flash")
extern class Flash {
	
	/**
	 * Registers a function to be called when a specific event is received.
	 * @param	eventType A string that specifies the event type to pass to this callback function.
	 * @param	callbackFunction An integer that identifies the event listener. Use this identifier when calling fl.removeEventListener() 
	 * @return The name of the function you want to execute every time the event occurs.
	 */
	public function addEventListener(eventType:EventType, callbackFunction:Dynamic):Int;

	/**
	 * Opens a File Open or File Save system dialog box and lets the user specify a file to be opened or saved.
	 * @param	browseType A string that specifies the type of file browse operation. Valid values are "open", "select" or "save". The values "open" and "select" open the system File Open dialog box. Each value is provided for compatibility with Dreamweaver. The value "save" opens a system File Save dialog box.
	 * @param	title An optional string that specifies a filter, such that only files that match the filters are displayed in the dialog, for example: "fla", "fla;as", "jsfl;fla;as"
	 * @param	fileDescription An optional string that specifies a file description, for example: FLA Document (*.fla), ActionScript File (*.as)
	 * @param	fileFilter An optional string that specifies the title for the File Open or File Save dialog box. If this parameter is omitted, a default value is used. This parameter is optional.
	 * @return The URL of the file, expressed as a file:/// URI; returns null if the user cancels out of the dialog box.
	 */
	public function browseForFileURL(browseType:String, ?title:String = null, ?fileDescription:String = null, ?fileFilter:Array<String> = null):String;

	/**
	 * Displays a Browse for Folder dialog box and lets the user select a folder.
	 * @param	description A string that specifies the event type to pass to this callback function.
	 * @return A string that specifies the event type to pass to this callback function.
	 */
	public function browseForFolderURL(?description:String = null):String;

	/**
	 * Clears the publish cache.
	 */
	public function clearPublishCache():Void;

	/**
	 * Copies the specified string to the Clipboard.
	 * @param	string A string to be copied to the Clipboard.
	 */
	public function clipCopyString(string:String):Void;

	/**
	 * Closes all open documents, displaying the Save As dialog box for any documents that were not previously saved.
	 * @param	bPromptToSave An optional Boolean value that specifies whether to display the Save dialog box for any files that have been changed since they were previously saved, or the Save As dialog box for files that have never been saved.
	 */
	public function closeAll(?bPromptToSave:Bool = true):Void;

	/**
	 * Closes all the SWF files that were opened with Control > Test Movie.
	 * @return A Boolean value: true if one or more movie windows were open; false otherwise.
	 */
	public function closeAllPlayerDocuments():Bool;

	/**
	 * Closes the specified document.
	 * @param	documentObject A Document object. If documentObject refers to the active document, the Document window might not close until the script that calls this method finishes executing.
	 * @param	bPromptToSaveChanges A Boolean value. When bPromptToSaveChanges is false, the user is not prompted if the document contains unsaved changes; that is, the file is closed and the changes are discarded. If bPromptToSaveChanges is true, and if the document contains unsaved changes, the user is prompted with the standard yes-or-no dialog box.
	 */
	public function closeDocument(documentObject:Document, ?bPromptToSaveChanges:Bool=true):Void;

	/**
	 * Silently copies a library item from a document without exposing the item in the Flash Pro user interface.
	 * @param	fileURI A string, expressed as a file:/// URI, that contains the path to the FLA or XFL file.
	 * @param	libraryItemPath A string, that specifies the path to the library item to be copied.
	 * @return A Boolean value: true if the copy succeeds; false otherwise.
	 */
	public function copyLibraryItem(fileURI:String, libraryItemPath:String):Bool;

	/**
	 * Opens a new document and selects it.
	 * @param	docType A string that specifies the type of document to create. The only acceptable value is "timeline".
	 * @return The Document object for the newly created document, if the method is successful. If an error occurs, the value is undefined 
	 */
	public function createDocument(?docType:String="timeline"):Document;

	/**
	 * Uniform Resource Identifier (URI) from which to export publish settings.
	 * @param	ucfURI A string that specifies the file Uniform Resource Identifier (URI) from which to export the publish settings.
	 * @param	profileName A string that specifies the profile name to export.
	 * @return A string, expressed as a file:/// URI, that contains the path to the file.
	 */
	public function exportPublishProfileString(ucfURI:String, ?profileName:String = null):String;

	/**
	 * Checks whether a file already exists on disk.
	 * @param	fileURI A Boolean value: true if the file exists on disk; false otherwise.
	 * @return An integer that represents a unique identifier for a document.
	 */
	public function fileExists(fileURI:String):Bool;

	/**
	 * Lets you target a specific file by using its unique identifier.
	 * @param	id A Document object, or null if no document exists with the specified id.
	 * @return The document name for which you want to find the index. The document must be open.
	 */
	public function findDocumentDOM(id:Int):Document;

	/**
	 * Returns an array of integers that represent the position of a document in the fl.documents array.
	 * @param	name The document name for which you want to find the index. The document must be open.
	 * @return An array of integers that represent the position of the document name in the fl.documents array.
	 */
	public function findDocumentIndex(name:String):Array<Int>;

	/**
	 * Exposes elements with instance names that match specified text.
	 * @param	instanceName The document name for which you want to find the index. The document must be open.
	 * @param	document A string that specifies the instance name of an item in the specified document.
	 * @return An array of generic objects. Use the.obj property of each item in the array to get the object. The object has the following properties: keyframe, layer, timeline, and parent.
	 */
	public function findObjectInDocByName(instanceName:String, document:Document):Array<Dynamic>;

	/**
	 * Exposes elements of a specified element type in a document.
	 * @param	elementType A string that represents the type of element to search for. For acceptable values, see element.elementType 
	 * @param	document The Document object in which to search for the specified item.
	 * @return An array of generic objects. Use the.obj property of each item in the array to get the element object. Each object has the following properties: keyframe, layer, timeline, and parent. 
	 */
	public function findObjectInDocByType(elementType:String, document:Document):Array<Dynamic>;

	/**
	 * Returns an integer that represents the number of bytes being used in a specified area of Flash.exe memory.
	 * @param	memType An integer that specifies the memory utilization area to be queried. For a list of acceptable values see original doc.
	 * @return An integer that represents the number of bytes being used in a specified area of Flash.exe memory.
	 */
	public function getAppMemoryInfo(memType:Int):Int;

	/**
	 * Retrieves the DOM (Document object) of the currently active document.
	 * @return A Document object, or null if no documents are open.
	 */
	public function getDocumentDOM():Document;

	/**
	 * Returns the SWFPanel object based on the panel's localized name or its SWF filename.
	 * @param	panelName The localized panel name or the root filename of the panel's SWF file. Pass in false as the second parameter if using the latter.
	 * @param	useLocalizedPanelName If false, the panelName parameter is assumed to be the English (unlocalized) name of the panel, which corresponds to the SWF filename without the file extension.
	 * @return Availability SWFPanel object
	 */
	public function getSwfPanel(panelName:String, ?useLocalizedPanelName:Bool = true):SwfPanel;

	/**
	 * Availability: Flash Professional CC.
	 * Retrieves a theme color that matches the parameter specified theme parameter name.
	 * @param	themeParamName A String containing a theme color (in #rrggbb or #rrggbbaa format) that matches the passed parameter. If the theme parameter is themeUseGradients, this method returns either "true" or "false".
	 * @return A string that contains a theme parameter from the list returned by the fl.getThemeColorParameters() method. If the theme parameter is themeUseGradients, this method returns either "true" or "false".
	 */
	public function getThemeColor(themeParamName:String):String;

	/**
	 * Availability:Flash Professional CC.
	 * Retrieves an array of theme parameter names.
	 * @return infoType Method; returns an Array of strings that contain the theme color parameters. The available theme color parameters can be found in the original doc.
	 */
	public function getThemeColorParameters():Array<String>;

	/**
	 * Availability:Flash Professional CC.
	 * Return either the font style or the font size that is used to draw the UI of the specified size.
	 * @param	infoType A string that contains one of the following:
		• fontStyle - Return the font style for the size specified by the size parameter.
		• fontSize - Return the font size for the size specified by the size parameter.
	 * @param	size A string that specifies either "large" or "small".
	 * @return A String containing either the font style or the font size for the specifie size.
	 */
	public function getThemeFontInfo(infoType:String, size:String):String;

	/**
	 * Determines whether a specified font is installed.
	 * @param	fontName A string that specifies the name of a device font.
	 * @return A Boolean value of true if the specified font is installed; false otherwise.
	 */
	public function isFontInstalled(fontName:String):Bool;

	/**
	 * Maps an escaped Unicode URL to a UTF-8 or MBCS URL.
	 * @param	URI A string that contains the escaped Unicode URL to map.
	 * @param	returnMBCS A Boolean value that you must set to true if you want an escaped MBCS path returned. Otherwise, the method returns UTF-8.
	 * @return A string that is the converted URL.
	 */
	public function mapPlayerURL(URI:String, ?returnMBCS:Bool=false):String;

	/**
	 * Opens a Flash (FLA) document for editing in a new Flash Document window and gives it focus.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the name of the file to be opened.
	 * @return The Document object for the newly opened document, if the method is successful. If the file is not found or is not a valid FLA file, an error is reported and the script is cancelled.
	 */
	public function openDocument(fileURI:String):Document;

	/**
	 * Opens a script (JSFL, AS, ASC) or other file (XML, TXT) in the Flash text editor.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the path of the JSFL, AS, ASC, XML, TXT, or other file that should be loaded into Flash.
	 */
	public function openScript(fileURI:String):Void;

	/**
	 * Method; publishes a FLA file without opening it. This API opens the FLA in a headless mode and publishes the SWF
(or whatever the profile is set to).
	 * @param	flaURI A string, expressed as a file:/// URI, that specifies the path of the FLA file that should be silently published.
	 * @param	publishProfile A string that specifies the publish profile to use when publishing. If this parameter is omitted, the default publish profile is used.
	 * @return Boolean indicating if the profile was found or not. In the case where the second parameter is not supplied, the return value is always true.
	 */
	public function publishDocument(flaURI: String, ?publishProfile: String): Bool;
	
	/**
	 * Quits Flash, prompting the user to save any changed documents.
	 * @param	bPromptIfNeeded A Boolean value that is true (default) if you want the user to be prompted to save any modified documents. Set this parameter to false if you do not want the user to be prompted to save modified documents. In the latter case, any modifications in open documents will be discarded and the application will exit immediately.
	 */
	public function quit(?bPromptIfNeeded:Bool = true):Void;

	/**
	 * Rebuilds the Tools panel from the toolconfig.xml file.
	 */
	public function reloadTools():Void;

	/**
	 * Unregisters a function that was registered using fl.addEventListener() 
	 * @param	eventType Specifies the event type to remove from this callback function.
	 * @param	id An integer that specifies the listener ID returned from the corresponding fl.addEventListener() call.
	 * @return A Boolean value of true if the event listener was successfully removed; false if the function was never added to the list with the fl.addEventListener() method.
	 */
	public function removeEventListener(eventType:EventType, id:Int):Bool;
	
	/**
	 * reverts the specified FLA document to its last saved version.
	 * Unlike the File > Revert menu option, this method does not display a warning window that asks the user to confirm the operation.
	 * @param	documentObject A Document object. If documentObject refers to the active document, the Document window might
not revert until the script that calls this method finishes executing.
	 * @return A Boolean value: true if the Revert operation completes successfully; false otherwise.
	 */
	public function revertDocument(documentObject: Document): Bool;
	
	/**
	 * Resets the global Classpath setting in the ActionScript 3.0 Settings dialog box to the default value.
	 */
	public function resetAS3PackagePaths():Void;

	/**
	 * Executes a JavaScript file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the name of the script file to execute.
	 * @param	funcName A string that identifies a function to execute in the JSFL file that is specified in fileURI.
	 * @param	arg1 An optional parameter that specifies one or more arguments to be passed to funcname.
	 * @param	arg2 
	 * @param	arg3 
	 * @param	arg4 
	 * @return The function's result as a string, if funcName is specified; otherwise, nothing.
	 */
	public function runScript(fileURI:String, ?funcName:String, ?arg1:Dynamic = null, ?arg2:Dynamic = null, ?arg3:Dynamic = null, ?arg4:Dynamic = null):String;

	/**
	 * Saves all open documents, displaying the Save As dialog box for any documents that were not previously saved.
	 */
	public function saveAll():Void;

	/**
	 * Saves the specified document as a FLA document. This method save the file regardless of whether it is new, modified, or unmodified.
	 * @param	document A Document object that specifies the document to be saved. If document is null, the active document is saved.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the name of the saved document. If the fileURI parameter is null or omitted, the document is saved with its current name.
	 * @return A Boolean value: true if the save operation completes successfully; false otherwise. 
	 */
	public function saveDocument(document:Document, ?fileURI:String):Bool;

	/**
	 * Displays the Save As dialog box for the specified document.
	 * @param	document A Document object that specifies the document to save. If document is null, the active document is saved.
	 * @return A Boolean value: true if the Save As operation completes successfully; false otherwise.
	 */
	public function saveDocumentAs(?document:Document):Bool;

	/**
	 * Enables selection or editing of an element.
	 * @param	elementObject The Element object you want to select.
	 * @param	editMode A Boolean value that specifies whether you want to edit the element (true) or want only to select it (false).
	 * @return A Boolean value of true if the element was successfully selected; false otherwise.
	 */
	public function selectElement(elementObject:Element, editMode:Bool):Bool;

	/**
	 * Selects the specified tool in the Tools panel.
	 * @param	toolName A string that specifies the name of the tool to select. The acceptable default values for toolName are "arrow", "bezierSelect", "freeXform", "fillXform", "lasso", "pen", "penplus", "penminus", "penmodify", "text",	"line", "rect", "oval", "rectPrimitive", "ovalPrimitive", "polystar", "pencil", "brush", "inkBottle",	"bucket", "eyeDropper", "eraser", "hand", and "magnifier" 
	 */
	public function selectTool(toolName:String):Void;

	/**
	 * Sets the active window to be the specified document.
	 * @param	document A Document object that specifies the document to select as the active window.
	 * @param	bActivateFrame An optional parameter that is ignored by Flash and Fireworks and is present only for compatibility with Dreamweaver.
	 */
	public function setActiveWindow(document:Document, ?bActivateFrame:Bool):Void;

	/**
	 * Availability: Flash Professional CC.
	 * Sets a boolean preference value.
	 * @param	keySection A string that contains the preferences section that contains keyName. (usually this is "Settings").
	 * @param	keyName A string that contains the name of the boolean preference setting to be set.
	 * @param	keyValue A string that contains the value to be set (true or false).
	 */
	public function setPrefBoolean(keySection:String, keyName:String, keyValue:String):Void;

	/**
	 * Lets you disable the warning about a script running too long.
	 * @param	show A Boolean value specifying whether to enable or disable the warning about a script running too long.
	 */
	public function showIdleMessage(show:Bool):Void;

	/**
	 * Availability: Flash Professional CC.
	 * Toggles a breakpoint for the given.as file at the given line.
	 * @param	fileURI A string; the URI of the the AS file in which to toggle the breakpoint.
	 * @param	line An integer; the line number at which to toggle the breakpoint.
	 * @param	enable Boolean; if set to true, the breakpoint is enabled. If set to false, the breakpoint is disabled.
	 */
	public function toggleBreakpoint(fileURI:String, line:Int, enable:Bool):Void;

	/**
	 * Sends a text string to the Output panel.
	 * @param	message A string that appears in the Output panel.
	 */
	public function trace(message:Dynamic):Void;

	/**
	 * Availability: Flash Professional CC.
	 * Launches the XML To UI dialog from a URI that points to an XML-format file.
	 * @param	xmlURI A URI specifying the XML file that defines the controls in the panel. You must specify the full path name.
	 * @return XMLUI. The object returned contains properties for all controls defined in the XML file. All properties are returned as strings. The returned object will have one predefined property named "dismiss," which will have a string value that is either "accept" or "cancel".
	 */
	public function xmlPanel(xmlURI:String):XMLUI;

	/**
	 * Availability: Flash Professional CC.
	 * Launches the XML To UI dialog from an XML-format string.
	 * @param	xmlString A string containing XML that defines a dialog.
	 * @return XMLUI.
	 */
	public function xmlPanelFromString(xmlString:String):XMLUI;

	/**
	 * Read-only; an actionsPanel object.
	 */
	public var actionsPanel(default, null):ActionsPanel;

	/**
	 * A string that corresponds to the global Classpath setting in the ActionScript 3.0 Settings dialog box.
	 */
	public var as3PackagePaths(default, default):String;

	/**
	 * Read-only; a compilerErrors object.
	 */
	public var compilerErrors(default, null):CompilerErrors;

	/**
	 * Read-only; a componentsPanel object, which represents the Components panel.
	 */
	public var componentsPanel(default, null):ComponentsPanel;

	/**
	 * Read-only; a string that specifies the full path for the local user’s Configuration folder as a platform-specific path.
	 */
	public var configDirectory(default, null):String;

	/**
	 * Read-only; a string that specifies the full path for the local user’s Configuration directory as a file:/// URI.
	 */
	public var configURI(default, null):String;

	/**
	 * A Boolean value that specifies whether Contact Sensitive selection mode is enabled.
	 */
	public var contactSensitiveSelection(default, default):Bool;

	/**
	 * Read-only; an array of strings that represent the various types of documents that can be created.
	 */
	public var createNewDocList(default, null):Array<String>;

	/**
	 * Read-only; an array of strings that represent the file extensions of the types of documents that can be created.
	 */
	public var createNewDocListType(default, null):Array<String>;

	/**
	 * Read-only; an array of strings that represent the various types of templates that can be created.
	 */
	public var createNewTemplateList(default, null):Array<String>;

	/**
	 * Read-only; an array of Document objects (see Document object) that represent the documents (FLA files) that are currently open for editing.
	 */
	public var documents(default, null):Array<Document>;

	/**
	 * The drawingLayer object that an extensible tool should use when the user wants to temporarily draw while dragging.
	 */
	public var drawingLayer(default, default):DrawingLayer;

	/**
	 * A string that contains a list of items in the global ActionScript 3.0 External library path, which specifies the location of SWC files used as runtime shared libraries.
	 */
	public var externalLibraryPath(default, default):String;

	/**
	 * A string that specifies the path to the Flex SDK folder, which contains bin, frameworks, lib, and other folders.
	 */
	public var flexSDKPath(default, default):String;

	/**
	 * Returns an array of generic objects corresponding to the list of installed Flash Players in the document Property inspector.
	 */
	public var installedPlayers(default, default):Array<Dynamic>;

	/**
	 * Returns the five character code identifying the locale of the application’s user interface.
	 */
	public var languageCode(default, default):String;

	/**
	 * A string that contains a list of items in the global ActionScript 3.0 Library path, which specifies the location of SWC files or folders containing SWC files.
	 */
	public var libraryPath(default, default):String;

	/**
	 * Read-only; the Math object, which provides methods for matrix and point operations.
	 */
	public var Math(default, null):JsflMath;

	/**
	 * Read-only; an array of the complete filenames in the Most Recently Used (MRU) list that the Flash authoring tool manages.
	 */
	public var mruRecentFileList(default, null):Array<String>;

	/**
	 * Read-only; an array of the file types in the MRU list that the Flash authoring tool manages.
	 */
	public var mruRecentFileListType(default, null):Array<String>;

	/**
	 * An integer that sets the disk cache size limit preference.
	 */
	public var publishCacheDiskSizeMax(default, default):Int;

	/**
	 * A boolean value that sets whether publish cache is enabled.
	 */
	public var publishCacheEnabled(default, default):Bool;

	/**
	 * An integer property that sets the maximum size for the memory cache entry preference.
	 */
	public var publishCacheMemoryEntrySizeLimit(default, default):Dynamic;

	/**
	 * An integer that sets the memory cache size limit preference.
	 */
	public var publishCacheMemorySizeMax(default, default):Int;

	/**
	 * An integer that represents the object drawing mode that is enabled.
	 */
	public var objectDrawingMode(default, default):Int;

	/**
	 * Read-only; reference to the outputPanel object.
	 */
	public var outputPanel(default, null):OutputPanel;

	/**
	 * Read-only; a presetPanel object.
	 */
	public var presetPanel(default, null):PresetPanel;

	/**
	 * Read-only; a string that represents the path of the currently running JSFL script, expressed as a file:/// URI.
	 */
	public var scriptURI(default, null):String;

	/**
	 * A string that contains a list of items in the global ActionScript 3.0 Source path, which specifies the location of ActionScript class files.
	 */
	public var sourcePath(default, default):String;

	/**
	 * Returns an instance of SpriteSheetExporter object.
	 */
	public var spriteSheetExporter(default, default):SpriteSheetExporter;

	/**
	 * An array of registered swfPanel objects (see swfPanel object).
	 */
	public var swfPanels(default, default):SwfPanel;

	/**
	 * Read-only; an array of Tools objects.
	 */
	public var tools(default, null):Tools;

	/**
	 * Read-only; the long string version of the Flash authoring tool, including platform.
	 */
	public var version(default, null):String;

	/**
	 * Read-only; an XMLUI object.
	 */
	public var xmlui(default, null):XMLUI;


}
