package jsfl;

/**
 * The presetItem object represents an item (preset or folder) in the Motion Presets panel (Window > Motion Presets).
 * The array of presetItem objects is a property of the presetPanel object (presetPanel.items).
 * 
 * All properties of the presetItem object are read only.
 * To perform tasks such as deleting, renaming, or moving items, use the methods of the presetPanel object.
 */
@:native("PresetItem")
extern class PresetItem {

	/**
	 * Specifies whether the item is installed along with Flash or is a custom item that you or someone else has created.
	 */
	public var isDefault(default, null):Bool;
	
	/**
	 * Specifies whether the item in the Motion Presets panel is a folder or a preset.
	 */
	public var isFolder(default, null):Bool;
	
	/**
	 * The level of the item in the folder structure of the Motion Presets panel.
	 */
	public var level(default, null):Int;
	
	/**
	 * The name of the preset or folder, without path information.
	 */
	public var name(default, null):String;
	
	/**
	 * Specifies whether a folder in the Motion Presets panel is currently expanded.
	 */
	public var open(default, null):Bool;
	
	/**
	 * The path to the item in the Motion Presets panel folder tree, and the item name.
	 */
	public var path(default, null):String;

}
