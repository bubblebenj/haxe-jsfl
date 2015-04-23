package jsfl;

/**
 * The presetPanel object represents the Motion Presets panel (Window > Motion Presets).
 * It is a property of the flash object (fl.presetPanel).
 */
@:native("PresetPanel")
@:build(jsfl.haxe.Config.build())
@:jsflVersion({ added: CS4 })
extern class PresetPanel {
	
	/**
	 * If a single motion tween is currently selected on the Stage, adds that motion to the Motion Presets panel.
	 * @param	namePath A string that specifies the path and name of the item to add to the Motion Presets panel.
	 * @return A Boolean value of true if the item was successfully added; false otherwise.
	 */
	public function addNewItem(?namePath:String):Bool;
	
	/**
	 * Applies the specified or currently selected preset to the currently selected item on the Stage.
	 * @param	presetPath A string that specifies the full path and name of the preset to be applied, as it appears in the Motion Presets panel. If you don’t pass a value, the currently selected preset is applied.
	 * @return A Boolean value of true if the preset is successfully applied, false otherwise.
	 */
	public function applyPreset(?presetPath:String):Bool;
	
	/**
	 * Deletes the specified folder and any of its subfolders from the folder tree of the Motion Presets panel.
	 * @param	folderPath A string that specifies the folder to delete from the Motion Presets panel.
	 * @return A Boolean value of true if the folder or folders are successfully deleted; false otherwise.
	 */
	public function deleteFolder(?folderPath:String):Bool;
	
	/**
	 * Deletes the specified preset from the Motion Presets panel.
	 * @param	namePath A string that specifies the path and name of the item to delete from the Motion Presets panel.
	 * @return A Boolean value of true if the item or items are successfully deleted; false otherwise.
	 */
	public function deleteItem(?namePath:String):Bool;
	
	/**
	 * Expands or collapses the currently selected folder or folders in the Motion Presets panel.
	 * @param	bExpand A Boolean value that specifies whether to expand the folder (true) or collapse it (false).
	 * @param	bRecurse A Boolean value that specifies whether to expand or collapse the folder’s subfolders (true) or not false).
	 * @param	folderPath A string that specifies the path to the folder to expand or collapse.
	 * @return A Boolean value of true if the folder or folders are successfully expanded or collapsed; false otherwise.
	 */
	public function expandFolder(?bExpand:Bool = true, ?bRecurse:Bool = false, ?folderPath:String):Bool;
	
	/**
	 * Exports the currently selected or the specified preset to an XML file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the path and optionally a filename for the exported file.
	 * @param	namePath A string that specifies the path and name of the item to select from the Motion Presets panel.
	 * @return A Boolean value of true if the preset was exported successfully; false otherwise.
	 */
	public function exportItem(fileURI:String, ?namePath:String):Bool;
	
	/**
	 * Returns an integer that represents the index location of an item in the Motion Presets panel.
	 * @param	presetName A string that specifies the name of the preset selected or for which the index value is returned.
	 * @return An integer that represents the index of the specified preset in the presetPanel.items array.
	 */
	public function findItemIndex(?presetName:String):Int;
	
	/**
	 * Returns an array of presetItem objects corresponding to the currently selected items in the Motion Presets panel.
	 * @return An array of presetItem objects.
	 */
	public function getSelectedItems():Array<PresetItem>;
	
	/**
	 * Adds a preset to the Motion Presets panel from a specified XML file.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies the XML file to be imported as a preset in the Motion Presets panel.
	 * @param	namePath A string that specifies in which folder to place the imported file and what to name it.
	 * @return A Boolean value of true if the file is successfully imported; false otherwise.
	 */
	public function importItem(fileURI:String, ?namePath:String):Bool;
	
	/**
	 * Moves the specified item to the specified folder.
	 * @param	folderPath A string that specifies the path and name of the item to move.
	 * @return A Boolean value of true if the items are successfully moved; false otherwise.
	 */
	public function moveToFolder(?folderPath:String):Bool;
	
	/**
	 * Creates a folder in the folder tree of the Motion Presets panel.
	 * @param	folderPath A string that specifies where to add a new folder in the Motion Presets panel, and the name of the new folder.
	 * @return A Boolean value of true if the folder is successfully added; false otherwise.
	 */
	public function newFolder(?folderPath:String):Bool;
	
	/**
	 * Renames the currently selected preset or folder to a specified name.
	 * @param	newName A string that specifies the new name for the preset or folder.
	 * @return A Boolean value of true if the preset or folder is successfully renamed; false otherwise.
	 */
	public function renameItem(newName:String):Bool;
	
	/**
	 * Selects or deselects an item in the Motion Presets panel.
	 * @param	namePath A string that specifies the path and name of the item to select from the Motion Presets panel.
	 * @param	bReplaceCurrentSelection A Boolean value that specifies whether the specified item replaces any current selection (true) or is added to the current selection (false).
	 * @param	bSelect A Boolean value that specifies whether to select the item (true) or deselect the item (false). If you pass false for bSelect, the value of bReplaceCurrentSelection is ignored.
	 * @return A Boolean value of true if the item was successfully selected or deselected; false otherwise.
	 */
	public function selectItem(namePath:String, ?bReplaceCurrentSelection:Bool = true, ?bSelect:Bool = true):Bool;
	
	/**
	 * An array of presetItem objects in the Motion Presets panel.
	 */
	public var items(default, default):Array<PresetItem>;
}
