package jsfl;

/**
 * The Item object is an abstract base class. Anything in the library derives from Item. See also library object.
 */
@:native("Item")
@:build(jsfl.haxe.Config.build())
extern class Item {
	
	/**
	 * Adds specified data to a library item.
	 * @param	name A string that specifies the name of the data.
	 * @param	type A string that specifies the type of data. Valid types are "integer", "integerArray", "double", "doubleArray", "string", and "byteArray" 
	 * @param	data The data to add to the specified library item. The type of data depends on the value of the type parameter. For
example, if type is " integer ", the value of data must be an integer, and so on.
	 */
	public function addData(name: String, type: PersistentDataType, data: Dynamic): Void;
	
	/**
	 * Retrieves the value of the specified data.
	 * @param	name A string that specifies the name of the data to retrieve.
	 * @return The data specified by the name parameter. The type of data returned depends on the type of stored data.
	 */
	public function getData(name: String): Dynamic;
	
	/**
	 * Indicates whether publishing of the specified persistent data is enabled for the specified format on a specified library item.
	 * @param	name A string that contains the name of the persistent data item, as specified in “item.addData() ” on page 345.
	 * @param	format A string that specifies the publishing format. If _EMBED_SWF_ is set, the persistent data is embedded in the SWF file every time a document is published.
	 * @return A Boolean value that indicates whether publishing of the specified persistent data is enabled for the specified format on this library item.
	 */
	@:jsflVersion({ added: CC })
	public function getPublishData(name: String, format: String): Bool;
	
	/**
	 * Determines whether the library item has the named data.
	 * @param	name A string that specifies the name of the data to check for in the library item.
	 * @return A Boolean value: true if the specified data exists; false otherwise.
	 */
	public function hasData(name: String): Bool;
	
	/**
	 * Removes persistent data from the library item.
	 * @param	name Specifies the name of the data to remove from the library item.
	 */
	public function removeData(name: String): Void;
	
	/**
	 * Enables publishing of persistent data for a library item.
	 * @param	name Specifies the name of the data to remove from the library item.
	 * @param	format A string that specifies the publishing format. If _EMBED_SWF_ is set, the persistent data is embedded in the SWF file every time a document is published.
	 * @param	publish A Boolean that indicates whether to enable or disable publishing of persistent data for the specified format.
	 */
	@:jsflVersion({ added: CC })
	public function setPublishData(name: String, format: String, publish: Bool): Void;
	
	/**
	 * Read-only; a string that specifies the type of element.
	 */
	public var itemType(default, null): ItemType;
	
	/**
	 * A string that specifies the ActionScript 3.0 class that will be associated with the symbol.
	 */
	@:jsflVersion({ added: CS3 })
	public var linkageBaseClass(default, default): String;
	
	/**
	 * A string that specifies the ActionScript 2.0 class that will be associated with the symbol.
	 */
	public var linkageClassName(default, default): String;
	
	/**
	 * A Boolean value. If true, the item is exported for ActionScript.
	 */
	public var linkageExportForAS(default, default): Bool;
	
	/**
	 * A Boolean value. If true, the item is exported for run-time sharing.
	 */
	public var linkageExportForRS(default, default): Bool;
	
	/**
	 * A Boolean value. If true, the item is exported in the first frame.
	 */
	public var linkageExportInFirstFrame(default, default): Bool;
	
	/**
	 * A string that specifies the name Flash will use to identify the asset when linking to the destination SWF file.
	 */
	public var linkageIdentifier(default, default): String;
	
	/**
	 * A Boolean value. If true, the item is imported for run-time sharing.
	 */
	public var linkageImportForRS(default, default): Bool;
	
	/**
	 * A string that specifies the URL where the SWF file containing the shared asset is located.
	 */
	public var linkageURL(default, default): String;
	
	/**
	 * A string that specifies the name of the library item, which includes the folder structure.
	 */
	public var name(default, default): String;

}