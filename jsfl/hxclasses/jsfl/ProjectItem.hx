package jsfl;

/**
 * The ProjectItem object represents an item (file on disk) that has been added to a project.
 * This object is a property of the Project object (see project.items ).
 */
@:native("ProjectItem")
@:require(jsfl_version >= FlashPro8 && jsfl_version < CS4)
extern class ProjectItem {
	
	/**
	 * Determines whether a project item can be published. An item can be published only if it is a FLA file.
	 * @return An item can be published only if it is a FLA file.
	 */
	public function canPublish():Bool;
	
	/**
	 * Determines whether a project item can be tested. An item can be tested if it is a FLA or HTML file.
	 * @return A Boolean value specifying whether a project item can be tested.
	 */
	public function canTest():Bool;
	
	/**
	 * Publishes a project item. Only FLA files can be published
	 * @return A Boolean value of true if successful; false otherwise.
	 */
	public function publish():Bool;
	
	/**
	 * Tests a project item. If the test operation fails because the item is not a FLA or HTML file, this method returns false.
	 * @return A Boolean value that indicates whether the item was successfully tested or not.
	 */
	public function test():Bool;
	
	/**
	 * Read-only; a string that specifies the name of a project item.
	 */
	public var displayName(default, null):String;
	
	/**
	 * Read-only; a Boolean value that specifies whether a file is missing from the disk.
	 */
	public var isMissing(default, null):Bool;
	
	/**
	 * Read-only; a string that specifies the path and name of the project item.
	 */
	public var itemURI(default, null):String;
	
	/**
	 * A string that specifies the publish profile to use when publishing a project item (FLA file).
	 */
	public var publishProfile(default, default):String;
	
}
