package jsfl;

import jsfl.Config;
import jsfl.JsflMath.JSFLPoint3D;

/**
 * The Document object represents the Stage. That is, only FLA files are considered documents.
 * To return the Document object for the current document, use fl.getDocumentDOM().
 */
@:native("Document")
extern class Document {
	
	/**
	 * Stores specified data with a document.
	 * @param	name A string that specifies the name of the data to add.
	 * @param	type A string that defines the type of data to add. Acceptable values are "integer", "integerArray", "double", "doubleArray", "string", and "byteArray".
	 * @param	data The value to add. Valid types depend on the type parameter.
	 */
	public function addDataToDocument(name:String, type:PersistentDataType, data:Dynamic):Void;

	/**
	 * Stores specified data with the selected objects.
	 * @param	name A string that specifies the name of the persistent data.
	 * @param	type Defines the type of data. Acceptable values are "integer", "integerArray", "double", "doubleArray", "string", and "byteArray".
	 * @param	data The value to add. Valid types depend on the type parameter.
	 */
	public function addDataToSelection(name:String, type:PersistentDataType, data:Dynamic):Void;
	
	/**
	 * Applies a filter to the selected objects.
	 * @param	filterName A string specifying the filter to be added to the Filters list and enabled for the selected objects.
	 */
	public function addFilter(filterName:FilterType):Void;

	/**
	 * Adds an item from any open document or library to the specified Document object.
	 * @param	position A point that specifies the x and y coordinates of the location at which to add the item. It uses the center of a symbol or the upper left corner of a bitmap or video.
	 * @param	item An Item object that specifies the item to add and the library from which to add it
	 * @return A Boolean value: true if successful; false otherwise.
	 */
	public function addItem(position: {x:Float, y:Float}, item:Item):Bool;

	/**
	 * Adds a new path between two points.
	 * @param	startpoint A pair of floating-point numbers that specify the x and y coordinates where the line starts.
	 * @param	endpoint A pair of floating-point numbers that specify the x and y coordinates where the line ends.
	 */
	public function addNewLine(startpoint: {x:Float, y:Float}, endpoint: {x:Float, y:Float}):Void;

	/**
	 * Adds a new Oval object in the specified bounding rectangle.
	 * @param	boundingRectangle A rectangle that specifies the bounds of the oval to be added. For information on the format of boundingRectangle.
	 * @param	bSuppressFill A Boolean value that, if set to true, causes the method to create the shape without a fill.
	 * @param	bSuppressStroke A Boolean value that, if set to true, causes the method to create the shape without a stroke.
	 */
	public function addNewOval(boundingRectangle:BoundingRectangle, ?bSuppressFill:Bool = false, ?bSuppressStroke:Bool = false):Void;

	/**
	 * Adds a new oval primitive fitting into the specified bounds.
	 * @param	boundingRectangle A rectangle that specifies the bounds within which the new oval primitive is added.
	 * @param	bSuppressFill A Boolean value that, if set to true, causes the method to create the oval without a fill. 
	 * @param	bSuppressStroke A Boolean value that, if set to true, causes the method to create the oval without a stroke.
	 */
	public function addNewPrimitiveOval(boundingRectangle:BoundingRectangle, ?bSuppressFill:Bool = false, ?bSuppressStroke:Bool = false):Void;

	/**
	 * Adds a new rectangle primitive fitting into the specified bounds.
	 * @param	rect A rectangle that specifies the bounds within which the new rectangle primitive is added.
	 * @param	roundness An integer between 0 and 999 that represents the number of points used to specify how much the corners should be rounded.
	 * @param	bSuppressFill A Boolean value that, if set to true, causes the method to create the rectangle without a fill.
	 * @param	bSuppressStroke A Boolean value that, if set to true, causes the method to create the rectangle without a stroke.
	 */
	public function addNewPrimitiveRectangle(rect:Rectangle, roundness:Int, ?bSuppressFill:Bool = false, ?bSuppressStroke:Bool = false):Void;

	/**
	 * Adds a new publish profile and makes it the current one.
	 * @param	profileName The unique name of the new profile. If you do not specify a name, a default name is provided.
	 * @return An integer that is the index of the new profile in the profiles list. Returns -1 if a new profile cannot be created.
	 */
	public function addNewPublishProfile(?profileName:String):Int;

	/**
	 * Adds a new rectangle or rounded rectangle, fitting it into the specified bounds.
	 * @param	boundingRectangle A rectangle that specifies the bounds within which the new rectangle is added
	 * @param	roundness An integer value from 0 to 999 that specifies the roundness to use for the corners. The value is specified as number of points.
	 * @param	bSuppressFill A Boolean value that, if set to true, causes the method to create the shape without a fill.
	 * @param	bSuppressStroke A Boolean value that, if set to true, causes the method to create the rectangle without a stroke.
	 */
	public function addNewRectangle(boundingRectangle:BoundingRectangle, roundness:Int, ?bSuppressFill:Bool = false, ?bSuppressStroke:Bool = false):Void;

	/**
	 * Adds a new scene(Timeline object) as the next scene after the currently selected scene and makes the new scene the currently selected scene.
	 * @param	name Specifies the name of the scene. If you do not specify a name, a new scene name is generated.
	 * @return A Boolean value: true if the scene is added successfully; false otherwise.
	 */
	public function addNewScene(name:String):Bool;

	/**
	 * Inserts a new empty text field.
	 * @param	boundingRectangle Specifies the size and location of the text field.
	 * @param	text An optional string that specifies the text to place in the field. If you omit this parameter, the selection in the Tools panel switches to the Text tool. Therefore, if you don’t want the selected tool to change, pass a value for text.
	 */
	public function addNewText(boundingRectangle:BoundingRectangle, ?text:String):Void;

	/**
	 * Aligns the selection.
	 * @param	alignmode A string that specifies how to align the selection.
	 * @param	bUseDocumentBounds A Boolean value that, if set to true, causes the method to align to the bounds of the document. Otherwise, the method uses the bounds of the selected objects.
	 */
	public function align(alignmode:AlignMode, ?bUseDocumentBounds:Bool=false):Void;

	/**
	 * Arranges the selection on the Stage.
	 * @param	arrangeMode Specifies the direction in which to move the selection. It provides the same capabilities as these options provide on the Modify > Arrange menu.
	 */
	public function arrange(arrangeMode:ArrangeMode):Void;

	/**
	 * Performs a break-apart operation on the current selection.
	 */
	public function breakApart():Void;

	/**
	 * Indicates whether the Edit Symbols menu and functionality are enabled.
	 * @return
	 */
	public function canEditSymbol():Bool;

	/**
	 * Determines whether you can use the document.revert() or fl.revertDocument() method successfully.
	 * @return
	 */
	public function canRevert():Bool;

	/**
	 * Determines whether you can use the document.testMovie() method successfully.
	 * @return A Boolean value: true if you can use the document.testMovie() method successfully: false otherwise.
	 */
	public function canTestMovie():Bool;

	/**
	 * Determines whether you can use the document.testScene() method successfully.
	 * @return A Boolean value: true if you can use the document.testScene() method successfully; false otherwise.
	 */
	public function canTestScene():Bool;

	/**
	 * Changes the index of the filter in the Filters list.
	 * @param	oldIndex An integer that represents the current zero-based index position of the filter you want to reposition in the Filters list.
	 * @param	newIndex An integer that represents the new index position of the filter in the list.
	 */
	public function changeFilterOrder(oldIndex:Int, newIndex:Int):Void;

	/**
	 * Copies the current selection from the document to the Clipboard.
	 */
	public function clipCopy():Void;

	/**
	 * Cuts the current selection from the document and writes it to the Clipboard.
	 */
	public function clipCut():Void;

	/**
	 * Pastes the contents of the Clipboard into the document.
	 * @param	bInPlace A Boolean value that, when set to true, causes the method to perform a paste-in-place operation. The default value is false, which causes the method to perform a paste operation to the center of the document.
	 */
	public function clipPaste(?bInPlace:Bool = false):Void;

	/**
	 * Closes the specified document.
	 * @param	bPromptToSaveChanges A Boolean value that, when set to true, causes the method to prompt the user with a dialog box if there are unsaved changes in the document.
	 */
	public function close(?bPromptToSaveChanges:Bool = true):Void;

	/**
	 * Converts lines to fills on the selected objects.
	 */
	public function convertLinesToFills():Void;

	/**
	 * Converts selected objects in the current frame to a bitmap and inserts the bitmap into the library.
	 * Availability: Flash Professional CC.
	 * @return 
	 */
	public function convertSelectionToBitmap():Bool;

	/**
	 * Converts the selected Stage items to a new symbol.
	 * @param	type A string that specifies the type of symbol to create. Acceptable values are "movie clip", "button", and "graphic".
	 * @param	name A string that specifies the name for the new symbol, which must be unique. You can submit an empty string to have this method create a unique symbol name for you.
	 * @param	registrationPoint Specifies the point that represents the 0,0 location for the symbol. Acceptable values are: "top left", "top center", "top right", "center left", "center", "center right", "bottom left", "bottom center", and "bottom right". TODO : fakeEnum in Haxe 3.2
	 * @return An object for the newly created symbol, or null if it cannot create the symbol.
	 */
	public function convertToSymbol(type:SymbolType, name:String, registrationPoint: String):Item;

	/**
	 * Uses the top selected drawing object to crop all selected drawing objects underneath it.
	 */
	public function crop():Void;

	/**
	 * Initiates a debug session with the document.
	 * @param	abortIfErrorsExist If set to true, the debug session will not start and the.swf
window will not open if there are compiler errors. Compiler warnings will not abort the command.
	 */
	public function debugMovie(?abortIfErrorsExist:Bool = false):Void;

	/**
	 * Deletes the envelope(bounding box that contains one or more objects) from the selected object.
	 */
	public function deleteEnvelope():Void;

	/**
	 * Deletes the currently active profile, if there is more than one.
	 * @return An integer that is the index of the new current profile. If a new profile is not available, the method leaves the current profile unchanged and returns its index.
	 */
	public function deletePublishProfile():Int;

	/**
	 * Deletes the current scene(Timeline object), and if the deleted scene was not the last one, sets the next scene as the current Timeline object.
	 * @return A Boolean value: true if the scene is successfully deleted; false otherwise.
	 */
	public function deleteScene():Bool;

	/**
	 * Deletes the current selection on the Stage. Displays an error message if there is no selection.
	 */
	public function deleteSelection():Void;

	/**
	 * Disables all filters on the selected objects.
	 */
	public function disableAllFilters():Void;

	/**
	 * Disables the specified filter in the Filters list.
	 * @param	filterIndex An integer representing the zero-based index of the filter in the Filters list.
	 */
	public function disableFilter(filterIndex:Int):Void;

	/**
	 * Disables all filters except the one at the specified position in the Filters list.
	 * @param	enabledFilterIndex An integer representing the zero-based index of the filter that should remain enabled.
	 */
	public function disableOtherFilters(enabledFilterIndex:Int):Void;

	/**
	 * Distributes the selection.
	 * @param	distributemode A string that specifies where to distribute the selected objects. Acceptable values are "left edge", "horizontal center", "right edge", "top edge", "vertical center", and "bottom edge". TODO : fakeEnum in Haxe 3.2
	 * @param	bUseDocumentBounds A Boolean value that, when set to true, distributes the selected objects using the bounds of the document. Otherwise, the method uses the bounds of the selected objects.
	 */
	public function distribute(distributemode:String, ?bUseDocumentBounds:Bool = false):Void;

	/**
	 * Performs a distribute-to-keyframes operation on the current selection; equivalent to selecting Distribute to Keyframes.
	 */
	public function distributeToKeyframes():Void;

	/**
	 * Performs a distribute-to-layers operation on the current selection; equivalent to selecting Distribute to Layers.
	 */
	public function distributeToLayers():Void;

	/**
	 * Checks the document for persistent data with the specified name.
	 * @param	name A string that specifies the name of the data to check.
	 * @return A Boolean value: true if the document has persistent data; false otherwise.
	 */
	public function documentHasData(name:String):Bool;

	/**
	 * Duplicates the currently active profile and gives the duplicate version focus.
	 * @param	profileName A string that specifies the unique name of the duplicated profile. If you do not specify a name, the
method uses the default name.
	 * @return An integer that is the index of the new profile in the profile list. Returns -1 if the profile cannot be duplicated.
	 */
	public function duplicatePublishProfile(?profileName:String):Int;

	/**
	 * Makes a copy of the currently selected scene, giving the new scene a unique name and making it the current scene.
	 * @return A Boolean value: true if the scene is duplicated successfully; false otherwise.
	 */
	public function duplicateScene():Bool;

	/**
	 * Duplicates the selection on the Stage.
	 */
	public function duplicateSelection():Void;

	/**
	 * Makes the specified scene the currently selected scene for editing.
	 * @param	index A zero-based integer that specifies which scene to edit.
	 */
	public function editScene(index:Int):Void;

	/**
	 * Enables all the filters on the Filters list for the selected objects.
	 */
	public function enableAllFilters():Void;

	/**
	 * Enables the specified filter for the selected objects.
	 * @param	filterIndex An integer specifying the zero-based index of the filter in the Filters list to enable.
	 */
	public function enableFilter(filterIndex:Int):Void;

	/**
	 * Switches the authoring tool into the editing mode specified by the parameter.
	 * @param	editMode A string that specifies the editing mode. Acceptable values are "inPlace" or "newWindow".
	 */
	public function enterEditMode(editMode:DocumentEnterEditMode):Void;

	/**
	 * Exits from symbol-editing mode and returns focus to the next level up from the editing mode.
	 */
	public function exitEditMode():Void;

	/**
	 * Export a selected movie clip, graphic, or button instance on the Stage to a new bitmap in the Library.
	 * Availability: Flash CS6.
	 * @param	frameNumber Integer indicating the frame to be exported.
	 * @param	bitmapName A string representing the name of the bitmap to be added to the Library.
	 */
	public function exportInstanceToLibrary(frameNumber:Int, bitmapName:String):Void;

	/**
	 * Export a selected movie clip, graphic, or button instance on the Stage to a series of PNG files on disk. If no startFrameNum or endFrameNum is given, the output includes all frames in the Timeline.
	 * Availability: Flash CS6.
	 * @param	outputURI String: The URI to export the PNG Sequence files to. This URI must reference a local file. Example:file:///c|/tests/mytest.png.
	 * @param	startFrameNum An integer indicating the first frame to be exported. 
	 * @param	endFrameNum An Integer indicating the last frame to be exported. 
	 * @param	matrix A matrix to be appended to the exported PNG sequence.
	 */
	public function exportInstanceToPNGSequence(outputURI:String, ?startFrameNum:Int = 1, ?endFrameNum:Int = 99999, ?matrix:Matrix):Void;

	/**
	 * Exports the document as one or more PNG files.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the filename for the exported file. If fileURI is an empty string or is not specified, Flash displays the Export Movie dialog box.
	 * @param	bCurrentPNGSettings A Boolean value that specifies whether to use the current PNG publish settings(true) or to display the Export PNG dialog box(false).
	 * @param	bCurrentFrame A Boolean value that specifies whether to export only the current frame(true) or to export all
frames, with each frame as a separate PNG file(false).
	 * @return A Boolean value of true if the file is successfully exported as a PNG file; false otherwise.
	 */
	public function exportPNG(?fileURI:String, ?bCurrentPNGSettings:Bool = false, ?bCurrentFrame:Bool = false):Bool;

	/**
	 * Exports the currently active profile to an XML file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the path of the XML file to which the profile is exported.
	 */
	public function exportPublishProfile(fileURI:String):Void;

	/**
	 * Returns a string that specifies, in XML format, the specified profile.
	 * @param	profileName A string that specifies the name of the profile to export to an XML string. if not set, the current profile is exported.
	 * @return An XML string.
	 */
	public function exportPublishProfileString(?profileName:String):Dynamic;

	/**
	 * Exports the document in the Flash SWF format.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the name of the exported file. If fileURI is empty or not specified, Flash displays the Export Movie dialog box.
	 * @param	bCurrentSettings A Boolean value that, when set to true, causes Flash to use current SWF publish settings. Otherwise, Flash displays the Export Flash Player dialog box.
	 */
	public function exportSWF(?fileURI:String = null, ?bCurrentSettings:Bool = false):Void;

	/**
	 * Exports a video from the document and optionally sends it to Adobe Media Encoder to convert the video.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the fully qualified path to which the video is saved.
	 * @param	convertInAdobeMediaEncoder A boolen value that specifies whether(true) or not(false) to send the recorded video to Adobe Media Encoder. 
	 * @param	transparent A boolean value that specifies whether(true) or not(false) the background should be included in the video.
	 * @param	stopAtFrame A boolean value that specifies whether the video should be recorded(true) until it reaches a certain frame or a specific time.
	 * @param	stopAtFrameOrTime If stopAtFrame is true, this is an int specifying the number of frames to record. If stopAtFrame is false, this is the number of milliseconds to record. The default value is 0 which, if stopAtFrame is true, will record all the frames in the main timeline.
	 */
	public function exportVideo(fileURI:String, ?convertInAdobeMediaEncoder:Bool = true, ?transparent:Bool = false, ?stopAtFrame:Bool = true, ?stopAtFrameOrTime:Int = 0):Void;

	/**
	 * Identical to retrieving the value of the To Stage button in the Align panel.
	 * @return A Boolean value: true if the preference is set to align the objects to the Stage; false otherwise.
	 */
	public function getAlignToDocument():Bool;

	/**
	 * Returns a string that specifies the blending mode for the selected objects.
	 * @return A string that specifies the blending mode for the selected objects. If more than one object is selected and they have different blending modes, the string reflects the blending mode of the object with the highest depth.
	 */
	public function getBlendMode():String;

	/**
	 * Retrieves the fill object of the selected shape, or the Tools panel and Property inspector if specified.
	 * @param	objectToFill A string that specifies the location of the fill object. The following values are valid:
		• "toolbar" returns the fill object of the Tools panel and Property inspector.
		• "selection" returns the fill object of the selection.
	 * @return The Fill object specified by the objectToFill parameter, if successful; otherwise, it returns undefined.
	 */
	public function getCustomFill(?objectToFill:String="selection"):Fill;

	/**
	 * Returns the stroke object of the selected shape, or the Tools panel and Property inspector if specified.
	 * @param	locationOfStroke A string that specifies the location of the stroke object. The following values are valid:
		• "toolbar", if set, returns the stroke object of the Tools panel and Property inspector.
		• "selection", if set, returns the stroke object of the selection.
	 * @return The Stroke object specified by the locationOfStroke parameter, if successful; otherwise, it returns undefined 
	 */
	public function getCustomStroke(?locationOfStroke:String="selection"):Stroke;

	/**
	 * Retrieves the value of the specified data.
	 * @param	name A string that specifies the name of the data to return.
	 * @return The specified data.
	 */
	public function getDataFromDocument(name:String):Dynamic;

	/**
	 * Gets the specified Element property for the current selection.
	 * @param	propertyName A string that specifies the name of the Element property for which to retrieve the value.
	 * @return The value of the specified property.
		• Returns null if the property is an indeterminate state, as when multiple elements are selected with different property values.
		• Returns undefined if the property is not a valid property of the selected element.
	 */
	public function getElementProperty(propertyName:String):Element;

	/**
	 * Gets a specified TextAttrs property of the selected Text objects.
	 * @param	attrName A string that specifies the name of the TextAttrs property to be returned.
	 * @param	startIndex An integer that specifies the index of first character, with 0(zero) specifying the first position.
	 * @param	endIndex An integer that specifies the index of last character.
	 * @return The text field if the selection return a unique value. Otherwise undefined.
	 */
	public function getElementTextAttr(attrName:String, ?startIndex:Null<Int>, ?endIndex:Null<Int>):Dynamic;

	/**
	 * Returns an array that contains the list of filters applied to the currently selected objects.
	 * @return An array that contains a list of filters applied to the currently selected objects.
	 */
	public function getFilters():Array<Filter>;

	/**
	 * Returns a string containing the XML metadata associated with the document.
	 * @return A string containing the XML metadata associated with the document or an empty string if there is no metadata.
	 */
	public function getMetadata():String;

	/**
	 * Returns the string passed to document.setMobileSettings().
	 * @return A string that represents the XML settings for the document. If no value has been set, returns an empty string.
	 */
	public function getMobileSettings():String;

	/**
	 * Returns a string that represents the targeted player version for the specified document.
	 * @return A string that represents the Flash Player version specified by using document.setPlayerVersion(). If no value has been set, returns the value specified in the Publish Settings dialog box.
	 */
	public function getPlayerVersion():String;

	/**
	 * Indicates whether publishing of the specified persistent data is enabled for the specified format in the document.
	 * Availability: Flash Professional CC.
	 * @param	format A string that specifies the publishing format. If set to "_EMBED_SWF_", the persistent data will be embedded in the SWF file every time a document is published.
	 * @return True if publishing of the specified persistent data is enabled for the specified format in this document. Otherwise False 
	 */
	public function getPublishDocumentData(format:String):Bool;

	/**
	 * Gets the bounding rectangle of the current selection. 
	 * @return The bounding rectangle of the current selection, or 0 if nothing is selected. For information on the format of the return value, see document.addNewRectangle().
	 */
	public function getSelectionRect():Rectangle;

	/**
	 * Gets the full path to the SWF file that is set in the current Publish profile.
	 * @return The full path to the SWF file that is set in the current Publish profile.
	 */
	public function getSWFPathFromProfile():String;

	/**
	 * Indicates whether the “Enable detailed telemetry” checkbox is selected in the Publish Settings dialog.
	 * Availability: Flash Professional CC.
	 * @return Returns true if the “Enable detailed telemetry” checkbox is selected; otherwise false 
	 */
	public function getTelemetryForSwf():Bool;

	/**
	 * Gets the currently selected text.
	 * @param	startIndex An integer that is an index of first character to get.
	 * @param	endIndex An integer that is an index of last character to get.
	 * @return A string that contains the selected text.
	 */
	public function getTextString(?startIndex:Null<Int>, ?endIndex:Null<Int>):String;

	/**
	 * Retrieves the current Timeline object in the document.
	 * @return The current Timeline object.
	 */
	public function getTimeline():Timeline;

	/**
	 * Gets the location of the transformation point of the current selection. Used for commutations such as rotate and skew.
	 * @return A point(for example, {x:10, y:20}, where x and y are floating-point numbers) that specifies the position of the transformation point(also origin point or zero point) within the selected element’s coordinate system.
	 */
	public function getTransformationPoint():{x:Float, y:Float};

	/**
	 * Converts the current selection to a group.
	 */
	public function group():Void;

	/**
	 * Imports a file into the document.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the path of the file to import.
	 * @param	importToLibrary A Boolean value that specifies whether to import the file only into the document’s library(true) or to also place a copy on the Stage(false).
	 * @param	showDialog A Boolean value that specifies whether to display the Import dialog box. Specifying true displays the import dialog. If you specify false, the function imports the file using specifications set in the Preferences dialog.
	 * @param	showImporterUI A Boolean value that specifies whether to display errors visually(for example, using the Library Conflict dialog box).
	 */
	public function importFile(fileURI:String, ?importToLibrary:Bool = false, ?showDialog:Bool = true, ?showImporterUI:Bool = false):Void;

	/**
	 * Imports a profile from a file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the path of the XML file defining the profile to import.
	 * @return An integer that is the index of the imported profile in the profiles list. Returns -1 if the profile cannot be imported.
	 */
	public function importPublishProfile(fileURI:String):Int;

	/**
	 * Imports an XML string that represents a publish profile and sets it as the current profile.
	 * @param	xmlString A string that contains the XML data to be imported as the current profile.
	 * @return A Boolean value of true if the string was successfully imported; false otherwise.
	 */
	public function importPublishProfileString(xmlString:String):Bool;

	/**
	 * Creates an intersection drawing object from all selected drawing objects.
	 */
	public function intersect():Void;

	/**
	 * Makes the size of the selected objects the same.
	 * @param	bWidth A Boolean value that, when set to true, causes the method to make the widths of the selected items the same.
	 * @param	bHeight A Boolean value that, when set to true, causes the method to make the heights of the selected items the same.
	 * @param	bUseDocumentBounds A Boolean value that, when set to true, causes the method to match the size of the objects to the bounds of the document. Otherwise, the method uses the bounds of the largest object.
	 */
	public function match(bWidth:Bool, bHeight:Bool, ?bUseDocumentBounds:Bool = false):Void;

	/**
	 * Performs a mouse click from the Selection tool.
	 * @param	position A pair of floating-point values that specify the x and y coordinates of the click in pixels.
	 * @param	bToggleSel A Boolean value that specifies the state of the Shift key: true for pressed; false for not pressed.
	 * @param	bShiftSel A Boolean value that specifies the state of the application preference Shift select: true for on; false for off.
	 */
	public function mouseClick(position: { x:Float, y:Float }, bToggleSel:Bool, bShiftSel:Bool):Void;

	/**
	 * Performs a double mouse click from the Selection tool.
	 * @param	position A pair of floating-point values that specify the x and y coordinates of the click in pixels.
	 * @param	bAltdown A Boolean value that records whether the Alt key is down(true) at the time of the event.
	 * @param	bShiftDown A Boolean value that records whether the Shift key was down(true) when the event occurred.
	 * @param	bShiftSelect A Boolean value that indicates the state of the application preference Shift select: true for on; false for off.
	 */
	public function mouseDblClk(position: { x:Float, y:Float }, bAltdown:Bool, 	bShiftDown:Bool, bShiftSelect:Bool):Void;

	/**
	 * If the selection contains at least one path with at least one Bézier point selected, this method moves all selected Bézier points on all selected paths by the specified amount.
	 * @param	delta A pair of floating-point values that specify the x and y coordinates in pixels by which the selected Bézier points are moved.
	 */
	public function moveSelectedBezierPointsBy(delta: { x:Float, y:Float }):Void;

	/**
	 * Moves selected objects by a specified distance.
	 * @param	distanceToMove A pair of floating-point values that specify the x and y coordinate values by which the method moves the selection.
	 */
	public function moveSelectionBy(distanceToMove: { x:Float, y:Float }):Void;

	/**
	 * Optimizes smoothing for the current selection, allowing multiple passes, if specified, for optimal smoothing; equivalent to selecting Modify > Shape > Optimize.
	 * @param	smoothing An integer in the range from 0 to 100, with 0 specifying no smoothing and 100 specifying maximum smoothing.
	 * @param	bUseMultiplePasses A Boolean value that, when set to true, indicates that the method should use multiple passes, which is slower but produces a better result. This parameter has the same effect as clicking the Use Multiple Passes button in the Optimize Curves dialog box.
	 */
	public function optimizeCurves(smoothing:Int, bUseMultiplePasses:Bool):Void;

	/**
	 * Publishes the document according to the active publish settings(File > Publish Settings); equivalent to selecting File > Publish.
	 */
	public function publish():Void;

	/**
	 * Uses the top selected drawing object to punch through all selected drawing objects underneath it.
	 * If no objects are selected, calling this method results in an error and the script breaks at that point.
	 */
	public function punch():Void;

	/**
	 * Removes all filters from the selected objects.
	 */
	public function removeAllFilters():Void;

	/**
	 * Removes persistent data with the specified name that has been attached to the document.
	 * @param	name A string that specifies the name of the data to remove.
	 */
	public function removeDataFromDocument(name:String):Void;

	/**
	 * Removes persistent data with the specified name that has been attached to the selection.
	 * @param	name A string that specifies the name of the persistent data to remove.
	 */
	public function removeDataFromSelection(name:String):Void;

	/**
	 * Removes the specified filter from the Filters list of the selected objects.
	 * @param	filterIndex An integer specifying the zero-based index of the filter to remove from the selected objects.
	 */
	public function removeFilter(filterIndex:Int):Void;

	/**
	 * Renames the current profile.
	 * @param	profileNewName An optional parameter that specifies the new name for the profile. The new name must be unique. If the name is not specified, a default name is provided.
	 * @return A Boolean value: true if the name is changed successfully; false otherwise.
	 */
	public function renamePublishProfile(?profileNewName:String):Bool;

	/**
	 * Renames the currently selected scene in the Scenes panel. The new name for the selected scene must be unique.
	 * @param	name A string that specifies the new name of the scene.
	 * @return A Boolean value: true if the name is changed successfully; false otherwise.
	 */
	public function renameScene(name:String):Bool;

	/**
	 * Moves the specified scene before another specified scene.
	 * @param	sceneToMove An integer that specifies which scene to move, with 0(zero) being the first scene.
	 * @param	sceneToPutItBefore An integer that specifies the scene before which you want to move the scene specified bysceneToMove. Specify 0(zero) for the first scene.
	 */
	public function reorderScene(sceneToMove:Int, sceneToPutItBefore:Int):Void;

	/**
	 * Sets all values in the Property inspector to default Oval object settings.
	 */
	public function resetOvalObject():Void;

	/**
	 * Sets all values in the Property inspector to default Rectangle object settings.
	 */
	public function resetRectangleObject():Void;

	/**
	 * Resets the transformation matrix; equivalent to selecting Modify > Transform > Remove Transform.
	 */
	public function resetTransformation():Void;

	/**
	 * Reverts the specified document to its previously saved version; equivalent to selecting File > Revert.
	 */
	public function revert():Void;

	/**
	 * Applies a 3D rotation to the selection.
	 * @param	xyzCoordinate An XYZ coordinate point that specifies the axes for 3D rotation.
	 * @param	bGlobalTransform A Boolean value that specifies whether the transformation mode should be global(true) or local(false).
	 */
	public function rotate3DSelection(xyzCoordinate: JSFLPoint3D, bGlobalTransform:Bool):Void;

	/**
	 * Rotates the selection by a specified number of degrees.
	 * @param	angle A floating-point value that specifies the angle of the rotation.
	 * @param	rotationPoint A string that specifies which side of the bounding box to rotate. Acceptable values are "top right", "top left", "bottom right", "bottom left", "top center", "right center", "bottom center", and "left center".
	 */
	public function rotateSelection(angle:Float, ?rotationPoint:String):Void;


	/**
	 * Saves the document in its default location; equivalent to selecting File > Save.
	 * @param	bOkToSaveAs An optional parameter that, if true or omitted, and the file was never saved, opens the Save As dialog box. If false and the file was never saved, the file is not saved.
	 * @return A Boolean value: true if the save operation completes successfully; false otherwise.
	 */
	public function save(?bOkToSaveAs:Bool):Bool;

	/**
	 * Saves a copy of the document to a specified location.
	 * Availability: Flash CS6.
	 * @param	URI The URI to export the new FLA file to. This URI must reference a local file. Example: file:///c|/tests/myTest.fla.
	 * @param	selectionOnly A boolean indicating whether only the current Stage selection should be saved to the new FLA file.
	 * @return A Boolean value: true if the saveAsCopy operation completes successfully; false otherwise.
	 */
	public function saveAsCopy(URI:String, ?selectionOnly:Bool = false):Bool;

	/**
	 * Scales the selection by a specified amount; equivalent to using the Free Transform tool to scale the object.
	 * @param	xScale A floating-point value that specifies the amount of x by which to scale.
	 * @param	yScale A floating-point value that specifies the amount of y by which to scale.
	 * @param	whichCorner A string value that specifies the edge about which the transformation occurs. If omitted, scaling occurs about the transformation point. Acceptable values are: "bottom left", "bottom right", "top right", "top left", "top center", "right center", "bottom center", and "left center"
	 */
	public function scaleSelection(xScale:Float, yScale:Float, ?whichCorner:String):Void;

	/**
	 * Selects all items on the Stage; equivalent to pressing Control+A(Windows) or Command+A(Macintosh) or selecting Edit > Select All.
	 */
	public function selectAll():Void;

	/**
	 * Deselects any selected items.
	 */
	public function selectNone():Void;

	/**
	 * Sets the preferences for document.align(), document.distribute(), document.match(), and document.space() to act on the document; equivalent to enabling the To Stage button in the Align panel.
	 * @param	bToStage A Boolean value that, if set to true, aligns objects to the Stage. If set to false, it does not.
	 */
	public function setAlignToDocument(bToStage:Bool):Void;

	/**
	 * Sets the blending mode for the selected objects.
	 * @param	mode A string that represents the desired blending mode for the selected objects. Acceptable values are "normal", "layer", "multiply", " screen", "overlay", "hardlight", "lighten", "darken", "difference", "add", "subtract", "invert", "alpha", and "erase".
	 */
	public function setBlendMode(mode:String):Void;

	/**
	 * Sets the fill settings for the Tools panel, Property inspector, and any selected shapes.
	 * @param	fill A Fill object that specifies the fill settings to be used. See Fill object.
	 */
	public function setCustomFill(fill:Fill):Void;

	/**
	 * Sets the stroke settings for the Tools panel, Property inspector, and any selected shapes.
	 * @param	stroke A Stroke object.
	 */
	public function setCustomStroke(stroke:Stroke):Void;

	/**
	 * Sets the specified Element property on selected objects in the document.
	 * @param	property A string that specifies the name of the Element property to set.
	 * @param	value An integer that specifies the value to set in the specified Element property.
	 */
	public function setElementProperty(property:String, value:Dynamic):Void;

	/**
	 * Sets the specified TextAttrs property of the selected text items to the specified value.
	 * @param	attrName A string that specifies the name of the TextAttrs property to change.
	 * @param	attrValue The value to which to set the TextAttrs property.
	 * @param	startIndex An integer value that specifies the index of the first character that is affected.
	 * @param	endIndex An integer value that specifies the index of the last character that is affected.
	 * @return A Boolean value: true if at least one text attribute property is changed; false otherwise.
	 */
	public function setElementTextAttr(attrName:String, attrValue:Dynamic, ?startIndex:Null<Int>, ?endIndex:Null<Int>):Bool;

	/**
	 * Changes the selection and the tools panel to the specified color.
	 * @param	color The color of the fill, in one of the following formats:
		• A string in the format "#RRGGBB" or "#RRGGBBAA"
		• A hexadecimal number in the format 0xRRGGBB
		• An integer that represents the decimal equivalent of a hexadecimal number
		If set to null, no fill color is set, which is the same as setting the Fill color swatch in the user interface to no fill.
	 */
	public function setFillColor(color:Dynamic):Void;

	/**
	 * Sets a specified filter property for the currently selected objects.
	 * @param	property A string specifying the property to be set. Acceptable values are "blurX", "blurY", "quality", angle", "distance", "strength", "knockout", "inner", "bevelType", "color", "shadowColor", and "highlightColor".
	 * @param	filterIndex An integer specifying the zero-based index of the filter in the Filters list.
	 * @param	value A number or string specifying the value to be set for the specified filter property. Acceptable values depend on the property and the filter being set.
	 */
	public function setFilterProperty(property:String, filterIndex:Int, value:Dynamic):Void;

	/**
	 * Applies filters to the selected objects.
	 * @param	filterArray The array of filters currently specified.
	 */
	public function setFilters(filterArray:Array<Filter>):Void;

	/**
	 * Sets the opacity of the instance.
	 * @param	opacity An integer between 0(transparent) and 100(completely saturated) that adjusts the transparency of the instance.
	 */
	public function setInstanceAlpha(opacity:Int):Void;

	/**
	 * Sets the brightness for the instance.
	 * @param	brightness An integer that specifies brightness as a value from -100(black) to 100(white).
	 */
	public function setInstanceBrightness(brightness:Int):Void;

	/**
	 * Sets the tint for the instance. 
	 * @param	color The color of the tint, in one of the following formats:
		• A string in the format "#RRGGBB" or "#RRGGBBAA"
		• A hexadecimal number in the format 0xRRGGBB
		• An integer that represents the decimal equivalent of a hexadecimal number
	 * @param	strength An integer between 0 and 100 that specifies the opacity of the tint.
	 */
	public function setInstanceTint(color:Dynamic, strength :Int):Void;


	/**
	 * Sets the XML metadata for the specified document, overwriting any existing metadata.
	 * @param	strMetadata A string containing the XML metadata to be associated with the document.
	 * @return A Boolean value: true if successful; false otherwise.
	 */
	public function setMetadata(strMetadata:String):Bool;

	/**
	 * Sets the value of an XML settings string in a mobile FLA file.
	 * @param	xmlString A string that describes the XML settings in a mobile FLA file.
	 * @return A value of true if the settings were successfully set; false otherwise.
	 */
	public function setMobileSettings(xmlString:String):Bool;

	/**
	 * Specifies a value for a specified property of primitive Oval objects.
	 * @param	propertyName A string that specifies the property to be set.
	 * @param	value The value to be assigned to the property. Acceptable values vary depending on the property you specify in propertyName.
	 */
	public function setOvalObjectProperty(propertyName:String, value:Dynamic):Void;

	/**
	 * Sets the version of the Flash Player targeted by the specified document.
	 * @param	version A string that represents the version of Flash Player targeted by the specified document. Acceptable values are "FlashLite", "FlashLite11", "FlashLite20", "FlashLite30", "1", "2", "3", "4", "5", "6", "7", "8", "9", " FlashPlayer10 ", " FlashPlayer10.3", "FlashPlayer11.1", "FlashPlayer11.2", "FlashPlayer11.3","FlashPlayer11.4", "FlashPlayer11.5", "FlashPlayer11.6", "FlashPlayer11.7", " AdobeAIR1_1 ", " AdobeAIR1_1 ", " AdobeAIR2_5 ", " AdobeAIR3_6 ", " android3_6 ", and " PF13_6 ".
	 * @return A value of true if the player version was successfully set; false otherwise.
	 */
	public function setPlayerVersion(version:String):Bool;
	
	/**
	 * Enables or disables publishing of persistent data for an entire document.
	 * If set to "_EMBED_SWF_", the persistent data will be embedded in the SWF file every time a document is published.
	 * Availability: Flash Professional CC.
	 * @param	format A string that specifies the publishing format.
	 * @param	publish A boolean that indicates whether to enable or disable publishing of persistent data for the specified format.
	 */
	public function setPublishDocumentData(format:String, publish:Bool):Void;


	/**
	 * Specifies a value for a specified property of primitive Rectangle objects.
	 * @param	propertyName A string that specifies the property to be set.
	 * @param	value The value to be assigned to the property.
	 */
	public function setRectangleObjectProperty(propertyName:String, value:Dynamic):Void;

	/**
	 * Moves and resizes the selection in a single operation.
	 * @param	boundingRectangle A rectangle that specifies the new location and size of the selection.
	 * @param	bContactSensitiveSelection A Boolean value that specifies whether the Contact Sensitive selection mode is enabled(true) or disabled(false) during object selection.
	 */
	public function setSelectionBounds(boundingRectangle:BoundingRectangle, ?bContactSensitiveSelection:Bool = false):Void;

	/**
	 * Draws a rectangular selection marquee relative to the Stage, using the specified coordinates.
	 * @param	rect A rectangle object to set as selected.
	 * @param	bReplaceCurrentSelection A Boolean value that specifies whether the method replaces the current selection(true) or adds to the current selection(false).
	 * @param	bContactSensitiveSelection A Boolean value that specifies whether the Contact Sensitive selection mode is enabled(true) or disabled(false) during object selection.
	 */
	public function setSelectionRect(rect:Rectangle, ?bReplaceCurrentSelection:Bool = true, ?bContactSensitiveSelection:Bool = false):Void;

	/**
	 * Specifies the vanishing point for viewing 3D objects.
	 * @param	point A point that specifies the x and y coordinates of the location at which to set the vanishing point for viewing 3D objects.
	 */
	public function setStageVanishingPoint(point: { x:Float, y:Float }):Void;

	/**
	 * Specifies the perspective angle for viewing 3D objects.
	 * @param	angle A floating point value between 0.0 and 179.0.
	 */
	public function setStageViewAngle(angle:Float):Void;

	/**
	 * Sets the color, width, and style of the selected strokes.
	 * @param	color The color of the stroke, in one of the following formats:
		• A string in the format "#RRGGBB" or "#RRGGBBAA"
		• A hexadecimal number in the format 0xRRGGBB
		• An integer that represents the decimal equivalent of a hexadecimal number
	 * @param	size A floating-point value that specifies the new stroke size for the selection.
	 * @param	strokeType A string that specifies the new type of stroke for the selection. Acceptable values are "hairline", "solid", "dashed", "dotted", "ragged", "stipple", and "hatched" 
	 */
	public function setStroke(color:Dynamic, size:Float, strokeType:String):Void;

	/**
	 * Changes the stroke color of the selection to the specified color.
	 * @param	The color of the stroke, in one of the following formats:
		• A string in the format "#RRGGBB" or "#RRGGBBAA"
		• A hexadecimal number in the format 0xRRGGBB
		• An integer that represents the decimal equivalent of a hexadecimal number
	 */
	public function setStrokeColor(color:Dynamic):Void;

	/**
	 * Changes the stroke size of the selection to the specified size.
	 * @param	size A floating-point value from 0.25 to 250that specifies the stroke size. The method ignores precision greater than two decimal places.
	 */
	public function setStrokeSize(size:Float):Void;

	/**
	 * Changes the stroke style of the selection to the specified style.
	 * @param	strokeType A string that specifies the stroke style for the current selection. Acceptable values are "hairline", "solid", "dashed", "dotted", "ragged", "stipple", and "hatched" 
	 */
	public function setStrokeStyle(strokeType:String):Void;

	/**
	 * Changes the bounding rectangle for the selected text item to the specified size.
	 * @param	boundingRectangle A rectangle that specifies the new size within which the text item should flow.
	 * @return A Boolean value: true if the size of at least one text field is changed; false otherwise.
	 */
	public function setTextRectangle(boundingRectangle:BoundingRectangle):Bool;

	/**
	 * Sets the text selection of the currently selected text field to the values specified by the startIndex and endIndex values.
	 * @param	startIndex An integer that specifies the position of the first character to select. The first character position is 0(zero).
	 * @param	endIndex An integer that specifies the end position of the selection up to, but not including, endIndex. The first character position is 0(zero).
	 * @return A Boolean value: true if the method can successfully set the text selection; false otherwise.
	 */
	public function setTextSelection(startIndex:Int, endIndex:Int):Bool;

	/**
	 * Inserts a string of text.
	 * @param	text A string of the characters to insert in the text field.
	 * @param	startIndex An integer that specifies the first character to replace. The first character position is 0(zero).
	 * @param	endIndex An integer that specifies the last character to replace.
	 * @return A Boolean value: true if the text of at least one text string is set; false otherwise.
	 */
	public function setTextString(text:String, ?startIndex:Int, endIndex:Int):Bool;

	/**
	 * Moves the transformation point of the current selection.
	 * @param	transformationPoint A point(for example, {x:10, y:20}, where x and y are floating-point numbers) that specifies values for the transformation point.
	 */
	public function setTransformationPoint(transformationPoint:{x:Float, y:Float}):Void;
 

	/**
	 * Skews the selection by a specified amount.
	 * @param	xSkew A floating-point number that specifies the amount of x by which to skew, measured in degrees.
	 * @param	ySkew A floating-point number that specifies the amount of y by which to skew, measured in degrees.
	 * @param	whichEdge A string that specifies the edge where the transformation occurs; if omitted, skew occurs at the transformation point. Acceptable values are "top center", "right center", "bottom center", and "left center". 
	 */
	public function skewSelection(xSkew:Float, ySkew:Float, ?whichEdge:String):Void;

	/**
	 * Smooths the curve of each selected fill outline or curved line.
	 */
	public function smoothSelection():Void;

	/**
	 * Spaces the objects in the selection evenly.
	 * @param	direction A string that specifies the direction in which to space the objects in the selection. Acceptable values are "horizontal" or "vertical".
	 * @param	bUseDocumentBounds A Boolean value that, when set to true, spaces the objects to the document bounds. Otherwise, the method uses the bounds of the selected objects.
	 */
	public function space(direction:String, ?bUseDocumentBounds:Bool = false):Void;

	/**
	 * Straightens the currently selected strokes; equivalent to using the Straighten button in the Tools panel.
	 */
	public function straightenSelection():Void;

	/**
	 * Swaps the current selection with the specified one.
	 * @param	name A string that specifies the name of the library item to use.
	 */
	public function swapElement(name:String):Void;

	/**
	 * Swaps the Stroke and Fill colors.
	 */
	public function swapStrokeAndFill():Void;

	/**
	 * Executes a Test Movie operation on the document.
	 * @param	abortIfErrorsExist Boolean; the default value is false. If set to true, the test movie session will not start and the.swf window will not open if there are compiler errors. Compiler warnings will not abort the command. This parameter was added in Flash Professional CS5.
	 */
	public function testMovie(abortIfErrorsExist:Bool):Void;

	/**
	 * Executes a Test Scene operation on the current scene of the document.
	 */
	public function testScene():Void;

	/**
	 * Performs a trace bitmap on the current selection; equivalent to selecting Modify > Bitmap > Trace Bitmap.
	 * @param	threshold An integer that controls the number of colors in your traced bitmap. Acceptable values are integers between 0 and 500.
	 * @param	minimumArea An integer that specifies the radius measured in pixels. Acceptable values are integers between 1 and 1000.
	 * @param	curveFit A string that specifies how smoothly outlines are drawn. Acceptable values are "pixels", "very tight","tight", "normal", "smooth", and "very smooth" 
	 * @param	cornerThreshold A string that is similar to curveFit, but it pertains to the corners of the bitmap image. Acceptable values are "many corners", "normal", and " few corners ".
	 */
	public function traceBitmap(threshold:Int, minimumArea:Int, curveFit:String, cornerThreshold:String):Void;

	/**
	 * Performs a general transformation on the current selection by applying the matrix specified in the arguments.
	 * @param	a A floating-point number that specifies the(0,0) element of the transformation matrix.
	 * @param	b A floating-point number that specifies the(0,1) element of the transformation matrix.
	 * @param	c A floating-point number that specifies the(1,0) element of the transformation matrix.
	 * @param	d A floating-point number that specifies the(1,1) element of the transformation matrix.
	 */
	public function transformSelection(a:Float, b:Float, c:Float, d:Float):Void;

	/**
	 * Sets the XYZ position around which the selection is translated or rotated. 
	 * @param	xyzCoordinate An XYZ coordinate that specifies the center point for 3D rotation or translation.
	 */
	public function translate3DCenter(xyzCoordinate: JSFLPoint3D):Void;

	/**
	 * Applies a 3D translation to the selection. This method is available only for movie clips.
	 * @param	xyzCoordinate An XYZ coordinate that specifies the axes for 3D translation.
	 * @param	bGlobalTransform A Boolean value that specifies whether the transformation mode should be global(true) or local(false).
	 */
	public function translate3DSelection(xyzCoordinate: JSFLPoint3D, ?bGlobalTransform:Bool = false):Void;

	/**
	 * Ungroups the current selection.
	 */
	public function unGroup():Void;

	/**
	 * Combines all selected shapes into a drawing object.
	 */
	public function union():Void;

	/**
	 * Unlocks all locked elements on the currently selected frame.
	 */
	public function unlockAllElements():Void;

	/**
	 * Posts a XMLUI dialog box. 
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the path to the XML file defining the controls in the panel. The full path is required.
	 * @return An object that has properties defined for all controls defined in the XML file.
	 */
	public function xmlPanel(fileURI:String):Dynamic;


	
	/**
	 * A string that is equivalent to the Name field in the Accessibility panel.
	 */
	public var accName(default, default):String;

	/**
	 * A Boolean value that describes whether the instances placed on the Stage are automatically added to user-defined timeline classes.
	 */
	public var as3AutoDeclare(default, default):Bool;

	/**
	 * A string that describes the ActionScript 3.0 “dialect” being used in the specified document.
	 */
	public var as3Dialect(default, default):String;

	/**
	 * An integer that specifies in which frame to export ActionScript 3.0 classes.
	 */
	public var as3ExportFrame(default, default):Int;

	/**
	 * A Boolean value that specifies whether the ActionScript 3.0 compiler should compile with the Strict Mode option turned on or off.
	 */
	public var as3StrictMode(default, default):Bool;

	/**
	 * A Boolean value that specifies whether the ActionScript 3.0 compiler should compile with the Warnings Mode option turned on or off.
	 */
	public var as3WarningsMode(default, default):Bool;

	/**
	 * An integer that specifies which version of ActionScript is being used in the specified file.
	 */
	public var asVersion(default, default):Int;

	/**
	 * A Boolean value that is equivalent to the Auto Label check box in the Accessibility panel.
	 */
	public var autoLabel(default, default):Bool;

	/**
	 * A string, hexadecimal value, or integer that represents the background color.
	 */
	public var backgroundColor(default, default):Int;

	/**
	 * A string that specifies the name of the active publish profile for the specified document.
	 */
	public var currentPublishProfile(default, default):String;

	/**An integer that specifies the index of the active timeline.
	 * 
	 */
	public var currentTimeline(default, default):Int;

	/**
	 * A string that is equivalent to the Description field in the Accessibility panel.
	 */
	public var description(default, default):String;

	/**
	 * Specifies the top-level ActionScript 3.0 class associated with the document.
	 */
	public var docClass(default, default):String;

	/**
	 * A string that contains a list of items in the document’s ActionScript 3.0 External library path, which specifies the location of SWC files used as runtime shared libraries.
	 */
	public var externalLibraryPath(default, default):String;

	/**
	 * A Boolean value that specifies whether the children of the specified object are accessible.
	 */
	public var forceSimple(default, default):Bool;

	/**
	 * A float value that specifies the number of frames displayed per second when the SWF file plays; the default is 12.
	 */
	public var frameRate(default, default):Float;

	/**
	 * An integer that specifies the height of the document(Stage) in pixels. 
	 */
	public var height(default, default):Int;

	/**
	 * A unique integer(assigned automatically) that identifies a document during a Flash session.
	 */
	public var id(default, default):Int;

	/**
	 * Read-only; the library object for a document.
	 */
	public var library(default, null):Library;

	/**
	 * A string that contains a list of items in the document’s ActionScript 3.0 Library path, which specifies the location of SWC files or folders containing SWC files.
	 */
	public var libraryPath(default, default):String;

	/**
	 * A Boolean value that specifies whether Live Preview is enabled.
	 */
	public var livePreview(default, default):Bool;

	/**
	 * Read-only; a string that represents the name of a document(FLA file).
	 */
	public var name(default, null):String;

	/**
	 * Read-only; a string that represents the path of the document, in a platform-specific format.
	 */
	public var path(default, null):String;

	/**
	 * Read-only; a string that represents the path of the document, expressed as a file:/// URI.
	 */
	public var pathURI(default, null):String;

	/**
	 * Read-only; an array of the publish profile names for the document.
	 */
	public var publishProfiles(default, null):Array<Dynamic>;

	/**
	 * An array of the selected objects in the document.
	 */
	public var selection(default, default):Array<Dynamic>;

	/**
	 * A Boolean value that specifies whether the object is accessible.
	 */
	public var silent(default, default):Bool;

	/**
	 * A string that contains a list of items in the document’s ActionScript 3.0 Source path, which specifies the location of ActionScript class files.
	 */
	public var sourcePath(default, default):String;

	/**
	 * An integer that returns the JPEG Quality setting from the current Publish Profile in the document.
	 */
	public var swfJPEGQuality(default, default):Int;

	/**
	 * Read-only; an array of Timeline objects(see Timeline object).
	 */
	public var timelines(default, null):Array<Timeline>;

	/**
	 * Read-only; a Matrix object.
	 */
	public var viewMatrix(default, null):Matrix;

	/**
	 * An integer that specifies the width of the document(Stage) in pixels.
	 */
	public var width(default, default):Int;

	/**
	 * Specifies the zoom percent of the Stage at authoring time.
	 */
	public var zoomFactor(default, default):Float;

}
