package jsfl;

/**
 * The presetItem object represents an item (preset or folder) in the Motion Presets panel (Window > Motion Presets).
 * The array of presetItem objects is a property of the presetPanel object (presetPanel.items).
 * 
 * All properties of the presetItem object are read only.
 * To perform tasks such as deleting, renaming, or moving items, use the methods of the presetPanel object.
 */
@:native("PresetItem")
@:require(jsfl_version >= CS4)
extern class PresetItem {

	/**
	 * Specifies whether the item is installed along with Flash or is a custom item that you or someone else has created.
	 */
	@:require(jsfl_version >= CS4)
	public var isDefault(default, null):Bool;
	
	/**
	 * Specifies whether the item in the Motion Presets panel is a folder or a preset.
	 */
	@:require(jsfl_version >= CS4)
	public var isFolder(default, null):Bool;
	
	/**
	 * The level of the item in the folder structure of the Motion Presets panel.
	 */
	@:require(jsfl_version >= CS4)
	public var level(default, null):Int;
	
	/**
	 * The name of the preset or folder, without path information.
	 */
	@:require(jsfl_version >= CS4)
	public var name(default, null):String;
	
	/**
	 * Specifies whether a folder in the Motion Presets panel is currently expanded.
	 */
	@:require(jsfl_version >= CS4)
	public var open(default, null):Bool;
	
	/**
	 * The path to the item in the Motion Presets panel folder tree, and the item name.
	 */
	@:require(jsfl_version >= CS4)
	public var path(default, null):String;

}