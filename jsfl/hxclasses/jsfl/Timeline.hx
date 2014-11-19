package jsfl;

/**
 * The Timeline object represents the Flash timeline, which can be accessed for the current document by using fl.getDocumentDOM().getTimeline().
 * This method returns the timeline of the current scene or symbol that is being edited.
 * 
 * When you work with scenes, each scene’s timeline has an index value, and can be accessed for the current document by fl.getDocumentDOM().timelines[i].
 * (In this example, i is the index of the value of the timeline.)
 * 
 * When you work with frames by using the methods and properties of the Timeline object, remember that the frame value is a zero-based index
 * (not the actual frame number in the sequence of frames in the timeline). That is, the first frame has a frame index of 0.
 */
@:native("Timeline")
extern class Timeline {

	/**
	 * Adds a motion guide layer above the current layer and attaches the current layer to the newly added guide layer.
	 * @return An integer that represents the zero-based index of the newly added guide layer. If the current layer type is not of type "Normal", Flash returns -1.
	 */
	public function addMotionGuide():Int;
	
	/**
	 * Adds a new layer to the document and makes it the current layer.
	 * @param	name A string that specifies the name for the new layer. If you omit this parameter, a new default layer name is assigned
to the new layer (“Layer n,” where n is the total number of layers created and deleted for that particular instance of the file).
	 * @param	layerType A string that specifies the type of layer to add. If you omit this parameter, a “Normal” type layer is created. Acceptable values are "normal", "guide", "guided", "mask", "masked", and "folder" 
	 * @param	bAddAbove A Boolean value that, if set to true (the default), causes Flash to add the new layer above the current layer; false causes Flash to add the layer below the current layer.
	 * @return An integer value of the zero-based index of the newly added layer.
	 */
	public function addNewLayer(?name:String, ?layerType:String, ?bAddAbove:Bool = true):Int;
	
	/**
	 * Deletes all the contents from a frame or range of frames on the current layer.
	 * @param	A zero-based index that defines the beginning of the range of frames to clear. If you omit startFrameIndex, the method uses the current selection.
	 * @param	endFrameIndex A zero-based index that defines the end of the range of frames to clear. The range goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the value of startFrameIndex.
	 */
	public function clearFrames(?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Void;
	
	/**
	 * Converts a keyframe to a regular frame and deletes its contents on the current layer.
	 * @param	startFrameIndex A zero-based index that defines the beginning of the range of frames to clear. If you omit startFrameIndex, the method uses the current selection.
	 * @param	endFrameIndex A zero-based index that defines the end of the range of frames to clear. The range goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the value of startFrameIndex.
	 */
	public function clearKeyframes(?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Void;
	
	/**
	 * Converts frames to blank keyframes on the current layer.
	 * @param	startFrameIndex A zero-based index that specifies the starting frame to convert to keyframes. If you omit startFrameIndex, the method converts the currently selected frames.
	 * @param	endFrameIndex A zero-based index that specifies the frame at which the conversion to keyframes will stop. The range of frames to convert goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the value of startFrameIndex.
	 */
	public function convertToBlankKeyframes(?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Void;
	
	/**
	 * Converts a range of frames to keyframes (or converts the selection if no frames are specified) on the current layer.
	 * @param	startFrameIndex A zero-based index that specifies the first frame to convert to keyframes. If you omit startFrameIndex, the method converts the currently selected frames.
	 * @param	endFrameIndex A zero-based index that specifies the frame at which conversion to keyframes will stop. The range frames to convert goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the value of startFrameIndex.
	 */
	public function convertToKeyframes(?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Void;
	
	/**
	 * Copies a range of frames on the current layer to the clipboard.
	 * @param	startFrameIndex A zero-based index that specifies the beginning of the range of frames to copy. If you omit startFrameIndex, the method uses the current selection.
	 * @param	endFrameIndex A zero-based index that specifies the frame at which to stop copying. The range of frames to copy goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the value of startFrameIndex.
	 */
	public function copyFrames(?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Void;
	
	/**
	 * Copies a range of Timeline layers to the clipboard.
	 * @param	startLayerIndex A zero-based index that specifies the beginning of the range of layers to copy. If you omit startLayerIndex, the method uses the current selection.
	 * @param	endLayerIndex A zero-based index that specifies the layer at which to stop copying. The range of layers to copy goes up to and including endLayerIndex. If you specify only startLayerIndex, then endLayerIndex defaults to the value of startLayerIndex.
	 */
	public function copyLayers(?startLayerIndex:Null<Int> =null, ?endLayerIndex:Null<Int> = null):Void;
	
	/**
	 * Copies motion on selected frames, either from a motion tween or from frame-by-frame animation, so it can be applied to other frames.
	 */
	public function copyMotion():Void;
	
	/**
	 * Copies motion on selected frames, either from a motion tween or from frame-by-frame animation, to the clipboard as ActionScript 3.0 code.
	 */
	public function copyMotionAsAS3():Void;
	
	/**
	 * Creates a new motion object at a designated start and end frame.
	 * @param	startFrame Specifies the first frame at which to create motion objects. If you omit startFrame, the method uses the current selection; if there is no selection, all frames at the current playhead on all layers are removed.
	 * @param	endFrame Specifies the frame at which to stop creating motion objects; the range of frames goes up to, but does not include, endFrame. If you specify only startFrame, endFrame defaults to the startFrame value.
	 */
	public function createMotionObject(?startFrame:Null<Int> =null, ?endFrame:Null<Int> = null):Void;
	
	/**
	 * Sets the frame.tweenType property to motion for each selected keyframe on the current layer, and converts each frame’s contents to a single symbol instance if necessary.
	 * @param	startFrameIndex A zero-based index that specifies the beginning frame at which to create a motion tween. If you omit startFrameIndex, the method uses the current selection.
	 * @param	endFrameIndex A zero-based index that specifies the frame at which to stop the motion tween. The range of frames goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the startFrameIndex value.
	 */
	public function createMotionTween(?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Void;
	
	/**
	 * Cuts a range of frames on the current layer from the timeline and saves them to the clipboard.
	 * @param	startFrameIndex A zero-based index that specifies the beginning of a range of frames to cut. If you omit startFrameIndex, the method uses the current selection.
	 * @param	endFrameIndex A zero-based index that specifies the frame at which to stop cutting. The range of frames goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the startFrameIndex value.
	 */
	public function cutFrames(?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Void;
	
	/**
	 * Cuts a range of Timeline layers and saves them to the clipboard.
	 * @param	startLayerIndex A zero-based index that specifies the beginning of the range of layers to cut. If you omit startLayerIndex, the method uses the current selection. 
	 * @param	endLayerIndex A zero-based index that specifies the layer at which to stop cutting. The range of layers to cut goes up to and including endLayerIndex. If you specify only startLayerIndex, then endLayerIndex defaults to the value of startLayerIndex.
	 */
	public function cutLayers(?startLayerIndex:Null<Int> =null, ?endLayerIndex:Null<Int> = null):Void;
	
	/**
	 * Deletes a layer.
	 * @param	index A zero-based index that specifies the layer to be deleted. If there is only one layer in the timeline, this method has no effect.
	 */
	public function deleteLayer(?index:Int):Void;
	
	/**
	 * Duplicates the selected layers or specified layers.
	 * @param	startLayerIndex A zero-based index that specifies the beginning of the range of layers to copy. It also specifies the layer above which the layers on the clipboard are pasted. If you omit startLayerIndex, the method uses the current layer selection.
	 * @param	endLayerIndex A zero-based index that specifies the layer at which to stop copying. The range of layers to copy goes up to and including endLayerIndex. If you specify only startLayerIndex, then endLayerIndex defaults to the value of startLayerIndex.
	 */
	public function duplicateLayers(?startLayerIndex:Null<Int> =null, ?endLayerIndex:Null<Int> = null):Void;
	
	/**
	 * Expands or collapses the specified folder or folders.
	 * @param	bExpand A Boolean value that, if set to true, causes the method to expand the folder; false causes the method to collapse the folder.
	 * @param	bRecurseNestedParents A Boolean value that, if set to true, causes all the layers within the specified folder to be opened or closed, based on the bExpand parameter.
	 * @param	index A zero-based index of the folder to expand or collapse. Use -1 to apply to all layers (you also must set bRecurseNestedParents to true). This property is equivalent to the Expand All/Collapse All menu items in the Flash authoring tool.
	 */
	public function expandFolder(bExpand:Bool, ?bRecurseNestedParents:Bool = true, ?index:Null<Int> = null):Void;
	
	/**
	 * Finds an array of indexes for the layers with the given name.
	 * @param	name A string that specifies the name of the layer to find.
	 * @return An array of index values for the specified layer. If the specified layer is not found, Flash returns undefined 
	 */
	public function findLayerIndex(name:String):Array<Int>;
	
	/**
	 * Returns the bounding rectangle for all elements on all layers on the Timeline, for a given frame.
	 * @param	frame The number of the frame for which you want the bounds. Defaults to 1, which is the first frame.
	 * @param	includeHiddenLayers Indicates whether to include element bounds from hidden layers. Defaults to the SWF publish setting value for "include hidden layers".
	 * @return The bounding rectangle for all elements on all layers on the Timeline, for the specified frame.
	 */
	public function getBounds(?frame:Int = 1, ?includeHiddenLayers:Bool = true):BoundingRectangle;
	
	/**
	 * Retrieves the specified property’s value for the selected frames.
	 * @param	property A string that specifies the name of the property for which to get the value.
	 * @param	startFrameIndex A zero-based index that specifies the starting frame number for which to get the value. If you omit startFrameIndex, the method uses the current selection.
	 * @param	endFrameIndex A zero-based index that specifies the end of the range of frames to select. The range goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the value of startFrameIndex.
	 * @return A value for the specified property, or undefined if all the selected frames do not have the same property value.
	 */
	public function getFrameProperty(property:String, ?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Dynamic;
	
	/**
	 * Returns an XML string that represents the current positions of the horizontal and vertical guide lines for a timeline (View > Guides > Show Guides).
	 * @return An XML string.
	 */
	public function getGuidelines():String;
	
	/**
	 * Retrieves the specified property’s value for the selected layers.
	 * @param	property A string that specifies the name of the property whose value you want to retrieve.
	 * @return The value of the specified property. Flash looks at the layer’s properties to determine the type. If all the specified layers don’t have the same property value, Flash returns undefined.
	 */
	public function getLayerProperty(property:String):Dynamic;
	
	/**
	 * Retrieves the currently selected frames in an array.
	 * @return An array containing 3n integers, where n is the number of selected regions. The first integer in each group is the layer index, the second integer is the start frame of the beginning of the selection, and the third integer specifies the ending frame of that selection range. The ending frame is not included in the selection.
	 */
	public function getSelectedFrames():Array<Int>;
	
	/**
	 * Retrieves the zero-based index values of the currently selected layers.
	 * @return An array of the zero-based index values of the selected layers.
	 */
	public function getSelectedLayers():Array<Int>;
	
	/**
	 * Inserts a blank keyframe at the specified frame index; if the index is not specified, inserts the blank keyframe by using the playhead/selection.
	 * @param	frameNumIndex A zero-based index that specifies the frame at which to insert the keyframe. If you omit frameNumIndex, the method uses the current playhead frame number.
	 */
	public function insertBlankKeyframe(?frameNumIndex:Int):Void;
	
	/**
	 * Inserts the specified number of frames at the given frame number.
	 * @param	numFrames An integer that specifies the number of frames to insert. If you omit this parameter, the method inserts frames at the current selection in the current layer.
	 * @param	bAllLayers A Boolean value that, if set to true, causes the method to insert the specified number of frames in the numFrames parameter into all layers; if set to false (the default), the method inserts frames into the current layer.
	 * @param	frameNumIndex A zero-based index that specifies the frame at which to insert a new frame.
	 */
	public function insertFrames(?numFrames:Int, ?bAllLayers:Bool = false, ?frameNumIndex:Null<Int> = null):Void;
	
	/**
	 * Inserts a keyframe at the specified frame.
	 * @param	frameNumIndex A zero-based index that specifies the frame index at which to insert the keyframe in the current layer. If you omit frameNumIndex, the method uses the frame number of the current playhead or selected frame.
	 */
	public function insertKeyframe(?frameNumIndex:Int):Void;
	
	/**
	 * Pastes the range of frames from the clipboard into the specified frames.
	 * @param	startFrameIndex A zero-based index that specifies the beginning of a range of frames to paste. If you omit startFrameIndex, the method uses the current selection.
	 * @param	endFrameIndex A zero-based index that specifies the frame at which to stop pasting frames. The method pastes up to, but not including, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the startFrameIndex value.
	 */
	public function pasteFrames(?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Void;
	
	/**
	 * Pastes copied layers to the Timeline above the specified layer index.
	 * @param	layerIndex A zero-based index that specifies the layer above which the layers on the clipboard are pasted. If you omit layerIndex, the method uses the current selection.
	 * @return Integer indicating the lowest layer index of the layers that were pasted.
	 */
	public function pasteLayers(?layerIndex:Int):Int;
	
	/**
	 * Pastes the range of motion frames retrieved by to the Timeline.
	 */
	public function pasteMotion():Void;
	
	/**
	 * Pastes motion on selected frames, displaying a dialog box that lets the user choose which parts of a classic tween to paste.
	 */
	public function pasteMotionSpecial():Void;
	
	/**
	 * Deletes the frame.
	 * @param	startFrameIndex A zero-based index that specifies the first frame at which to start removing frames. If you omit startFrameIndex, the method uses the current selection; if there is no selection, all frames at the current playhead on all layers are removed.
	 * @param	endFrameIndex A zero-based index that specifies the frame at which to stop removing frames; the range of frames goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the startFrameIndex value.
	 */
	public function removeFrames(?startFrameIndex:Int, ?endFrameIndex:Int):Void;
	
	/**
	 * Removes the motion object created with timeline.createMotionObject(), and converts the frame(s) to static frames.
	 * @param	startFrame Specifies the first frame at which to start removing motion objects. If you omit startFrame, the method uses the current selection; if there is no selection, all frames at the current playhead on all layers are removed.
	 * @param	endFrame Specifies the frame at which to stop removing motion objects; the range of frames goes up to, but does not include, endFrame. If you specify only startFrame, endFrame defaults to the startFrame value.
	 */
	public function removeMotionObject(?startFrame:Null<Int> =null, ?endFrame:Null<Int> = null):Void;
	
	/**
	 * Moves the first specified layer before or after the second specified layer.
	 * @param	layerToMove A zero-based index that specifies which layer to move.
	 * @param	layerToPutItBy A zero-based index that specifies which layer you want to move the layer next to. For example, if you specify 1 for layerToMove and 0 for layerToPutItBy, the second layer is placed next to the first layer.
	 * @param	bAddBefore Specifies whether to move the layer before or after layerToPutItBy. If you specify false, the layer is moved after layerToPutItBy.
	 */
	public function reorderLayer(layerToMove:Int, layerToPutItBy:Int, ?bAddBefore:Bool = true):Void;
	
	/**
	 * Reverses a range of frames.
	 * @param	startFrameIndex A zero-based index that specifies the first frame at which to start reversing frames. If you omit startFrameIndex, the method uses the current selection.
	 * @param	endFrameIndex A zero-based index that specifies the first frame at which to stop reversing frames; the range of frames goes up to, but does not include, endFrameIndex. If you specify only startFrameIndex, endFrameIndex defaults to the value of startFrameIndex.
	 */
	public function reverseFrames(?startFrameIndex:Int, ?endFrameIndex:Int):Void;
	
	/**
	 * Selects all the frames in the current timeline.
	 */
	public function selectAllFrames():Void;
	
	/**
	 * Sets the property of the Frame object for the selected frames.
	 * @param	property A string that specifies the name of the property to be modified.
	 * @param	value Specifies the value to which you want to set the property.
	 * @param	startFrameIndex A zero-based index that specifies the starting frame number to modify. If you omit startFrameIndex, the method uses the current selection.
	 * @param	endFrameIndex A zero-based index that specifies the first frame at which to stop. The range of frames goes up to, but does not include, endFrameIndex. If you specify startFrameIndex but omit endFrameIndex, endFrameIndex defaults to the value of startFrameIndex.
	 */
	public function setFrameProperty(property:String, value:String, ?startFrameIndex:Null<Int> = null, ?endFrameIndex:Null<Int> = null):Void;
	
	/**
	 * Replaces the guide lines for the timeline with the information specified.
	 * @param	xmlString An XML string that contains information on the guidelines to apply.
	 * @return A Boolean value of true if the guidelines are successfully applied; false otherwise.
	 */
	public function setGuidelines(xmlString:String):Bool;
	
	/**
	 * Sets the specified property on all the selected layers to a specified value.
	 * @param	property A string that specifies the property to set.
	 * @param	value The value to which you want to set the property. Use the same type of value you would use when setting the property in the layer object.
	 * @param	layersToChange A string that identifies which layers should be modified. Acceptable values are "selected", "all", and "others".
	 */
	public function setLayerProperty(property:String, value:Dynamic, ?layersToChange:String = "selected"):Void;
	
	/**
	 * Selects a range of frames in the current layer or sets the selected frames to the selection array passed into this method.
	 * @param	startFrameIndex A zero-based index that specifies the beginning frame to set.
	 * @param	endFrameIndex A zero-based index that specifies the end of the selection; endFrameIndex is the frame after the last frame in the range to select.
	 * @param	selectionList An array of three integers, as returned by timeline.getSelectedFrames().
	 * @param	bReplaceCurrentSelection A Boolean value that, if it is set to true, causes the currently selected frames to be deselected before the specified frames are selected.
	 */
	public function setSelectedFrames(?startFrameIndex:Int, ?endFrameIndex:Int, ?selectionList:Array<Int> = null, ?bReplaceCurrentSelection:Bool = true):Void;
	
	/**
	 * Sets the layer to be selected; also makes the specified layer the current layer.
	 * @param	index A zero-based index for the layer to select.
	 * @param	bReplaceCurrent Selection A Boolean value that, if it is set to true, causes the method to replace the current
selection; false causes the method to extend the current selection.
	 */
	public function setSelectedLayers(index:Int, ?bReplaceCurrentSelection:Bool = true):Void;
	
	/**
	 * Shows the layer masking during authoring by locking the mask and masked layers.
	 * @param	layer A zero-based index of a mask or masked layer to show masking during authoring.
	 */
	public function showLayerMasking(?layer:Int):Void;
	
	/**
	 * Starts automatic playback of the timeline if it is not currently playing.
	 */
	public function startPlayback():Void;
	
	/**
	 * Stops autoumatic playback of the timeline if it is currently playing.
	 */
	public function stopPlayback():Void;

	
	/**
	 * A zero-based index for the frame at the current playhead location.
	 */
	public var currentFrame(default, default):Int;
	
	/**
	 * A zero-based index for the currently active layer.
	 */
	public var currentLayer(default, default):Int;
	
	/**
	 * Read-only; an integer that represents the number of frames in this timeline’s longest layer.
	 */
	public var frameCount(default, null):Int;
	
	/**
	 * Read-only; an integer that represents the number of layers in the specified timeline.
	 */
	public var layerCount(default, null):Int;
	
	/**
	 * Read-only; an array of layer objects.
	 */
	public var layers(default, null):Array<Layer>;
	
	/**
	 * Read-only property; indicates whether the timeline belongs to a scene.
	 */
	public var libraryItem(default, null):Null<Item>;
	
	/**
	 * A string that represents the name of the current timeline.
	 */
	public var name(default, default):String;
}
