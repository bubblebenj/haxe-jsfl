package jsfl;

/**
 * The library object represents the Library panel.
 * It is a property of the Document object (see document.library) and can be accessed by fl.getDocumentDOM().library.
 * 
 * The library object contains an array of items of different types, including symbols, bitmaps, sounds, and video.
 */
@:native("Library")
extern class Library {
	/**
	 * Adds the current or specified item to the Stage at the specified position.
	 * @param	position A point that specifies the x,y position of the center of the item on the Stage.
	 * @param	namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using slash notation. If namePath is not specified, the current library selection is used.
	 * @return A Boolean value: true if the item is successfully added to the document; false otherwise.
	 */
	public function addItemToDocument(position: { x:Float, y:Float }, ?namePath:String):Bool;

	/**
	 * Creates a new item of the specified type in the Library panel and sets the new item to the currently selected item.
	 * @param	type A string that specifies the type of item to create. The only acceptable values for type are "video", "movie clip", "button", "graphic", "bitmap", "screen", and "folder". Specifying a folder path is the same as using library.newFolder() before calling this method.
	 * @param	namePath A string that specifies the name of the item to be added. If the item is in a folder, specify its name and path using slash notation.
	 * @return A Boolean value: true if the item is successfully created; false otherwise.
	 */
	public function addNewItem(type:String, ?namePath:String):Bool;

	/**
	 * Deletes the current items or a specified item from the Library panel.
	 * @param	namePath A string that specifies the name of the item to be deleted. If the item is in a folder, you can specify its name
and path using slash notation. If you pass a folder name, the folder and all its items are deleted. If no name is specified,
Flash deletes the currently selected item or items. To delete all the items in the Library panel, select all items before
using this method.
	 * @return A Boolean value: true if the items are successfully deleted; false otherwise.
	 */
	public function deleteItem(?namePath:String):Bool;

	/**
	 * Makes a copy of the currently selected or specified item.
	 * @param	namePath A string that specifies the name of the item to duplicate. If the item is in a folder, you can specify its name
and path using slash notation.
	 * @return A Boolean value: true if the item is duplicated successfully; false otherwise. If more than one item is selected, Flash returns false.
	 */
	public function duplicateItem(?namePath:String):Bool;
	
	/**
	 * Opens the currently selected or specified item in Edit mode.
	 * @param	namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using slash notation. If namePath is not specified, the single selected library item opens in Edit mode. If none or more than one item in the library is currently selected, the first scene in the main timeline appears for editing.
	 * @return A Boolean value: true if the specified item exists and can be edited; false otherwise.
	 */
	public function editItem(?namePath:String = null):Bool;
	
	/**
	 * Returns the library item’s index value (zero-based).
	 * @param	namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using slash notation.
	 * @return An integer value representing the item’s zero-based index value.
	 */
	public function findItemIndex(namePath:String):Int;
	
	/**
	 * Gets the property for the selected item.
	 * @param	property A string. For a list of values that you can use as a property parameter, see the Property summary table for the Item object, along with property summaries for its subclasses.
	 * @return A string value for the property.
	 */
	public function getItemProperty(property:String):String;
	
	/**
	 * Gets the type of object currently selected or specified by a library path.
	 * @param	namePath A string that specifies the name of the item. If the item is in a folder, specify its name and path using slash notation. If namePath is not specified, Flash provides the type of the current selection. If more than one item is currently selected and no namePath is provided, Flash ignores the command.
	 * @return A string value specifying the type of object.
	 */
	public function getItemType(?namePath:String):ItemType;
	
	/**
	 * Gets the array of all currently selected items in the library.
	 * @return An array of values for all currently selected items in the library.
	 */
	public function getSelectedItems():Array<Item>;
	
	/**
	 * Checks to see if a specified item exists in the library.
	 * @param	namePath A string that specifies the name of the item. If the item is in a folder, specify its name and path using slash notation.
	 * @return A Boolean value: true if the specified item exists in the library; false otherwise.
	 */
	public function itemExists(namePath:String):Bool;
	
	/**
	 * Moves the currently selected or specified library item to a specified folder.
	 * @param	folderPath A string that specifies the path to the folder in the form "FolderName" or "FolderName/FolderName". To move an item to the top level, specify an empty string ("") for folderPath.
	 * @param	itemToMove A string that specifies the name of the item to move. If itemToMove is not specified, the currently selected items move.
	 * @param	bReplace A Boolean value. If an item with the same name already exists, specifying true for the bReplace parameter replaces the existing item with the item being moved. If false, the name of the dropped item changes to a unique name.
	 * @return A Boolean value: true if the item moves successfully; false otherwise.
	 */
	public function moveToFolder(folderPath:String, ?itemToMove:String = null, ?bReplace:Bool = false):Bool;
	
	/**
	 * Creates a new folder with the specified name, or a default name ("untitledfolder #") if no folderName parameter is provided, in the currently selected folder.
	 * @param	folderPath A string that specifies the name of the folder to be created. If it is specified as a path, and the path doesn’t exist, the path is created.
	 * @return A Boolean value: true if folder is created successfully; false otherwise.
	 */
	public function newFolder(?folderPath:String = null):Bool;
	
	/**
	 * Renames the currently selected library item in the Library panel.
	 * @param	name A string that specifies a new name for the library item.
	 * @return A Boolean value of true if the name of the item changes successfully, false otherwise. If multiple items are selected, no names are changed, and the return value is false (to match user interface behavior).
	 */
	public function renameItem(name:String):Bool;
	
	/**
	 * Selects or deselects all items in the library.
	 * @param	bSelectAll A Boolean value that specifies whether to select or deselect all items in the library. Omit this parameter or use the default value of true to select all the items in the library; false deselects all library items.
	 */
	public function selectAll(?bSelectAll:Bool = true):Void;
	
	/**
	 * Selects a specified library item.
	 * @param	namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using slash notation.
	 * @param	bReplaceCurrentSelection A Boolean value that specifies whether to replace the current selection or add the item to the current selection.
	 * @param	bSelect A Boolean value that specifies whether to select or deselect an item.
	 * @return A Boolean value: true if the specified item exists; false otherwise.
	 */
	public function selectItem(namePath:String, ?bReplaceCurrentSelection:Bool = true, ?bSelect:Bool = true):Bool;
	
	/**
	 * Deselects all the library items.
	 */
	public function selectNone():Void;
	
	/**
	 * Sets the property for all selected library items (ignoring folders).
	 * @param	property A string that is the name of the property to set. For a list of properties, see the Property summary table for the Item object and property summaries for its subclasses.
	 * @param	value The value to assign to the specified property.
	 */
	public function setItemProperty(property:String, value:Dynamic):Void;
	
	/**
	 * Updates the specified item.
	 * @param	namePath A string that specifies the name of the item. If the item is in a folder, specify its name and path using slash notation. This is the same as right-clicking on an item and selecting Update from the menu in the user interface. If no name is provided, the current selection is updated.
	 * @return A Boolean value: true if Flash updated the item successfully; false otherwise.
	 */
	public function updateItem(?namePath:String):Bool;
	
	/**
	 * An array of Item objects in the library
	 */
	public var items(default, default):Array<Item>;
	
	/**
	 * An array of library Items that are not used in the document.
	 */
	public var unusedItems(default, default):Array<Item>;
	
}
