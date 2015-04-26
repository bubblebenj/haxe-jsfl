package jsfl;

/**
 * The Project object represents a Flash Project (FLP) file.
 */
@:native("Project")
@:build(jsfl.haxe.Config.build())
@:jsflVersion({ added: Flash8, removed: CS4 })
extern class Project {
	
	/**
	 * Adds the specified file to the project.
	 * @param	fileURI A string specifying the file to be added to the project, expressed as a file:/// URI.
	 * @param	autoCreateFolder An optional Boolean value specifying if folders should be automatically created in the Project panel to mirror the path in fileURI.
	 * @return If successful, returns a ProjectItem object; otherwise, returns  undefined . 
	 */
	public function addFile(fileURI:String, ?autoCreateFolder:Bool=false):ProjectItem;
	
	/**
	 * Determines whether the project can be published. A project can be published if it contains at least one FLA file.
	 * @return A Boolean value specifying whether the project can be published.
	 */
	public function canPublishProject():Bool;
	
	/**
	 * Determines whether the project can be tested. A project can be tested if a default document has been specified.
	 * @return A Boolean value specifying whether the project can be tested.
	 */
	public function canTestProject():Bool;
	
	/**
	 * Searches for a specified file in the project. 
	 * @param	fileURI A string specifying the file to search for in the project, expressed as a file:/// URI.
	 * @return A ProjectItem object for the item if successful; otherwise, returns false .
	 */
	public function findProjectItem(fileURI:String):ProjectItem;
	
	/**
	 * Publishes the FLA files in a project. 
	 * @return A Boolean value indicating if the project was successfully published.
	 */
	public function publishProject():Bool;
	
	/**
	 * Tests the project. A project must have a default document to be tested.
	 * @return A Boolean value indicating if the project was successfully tested.
	 */
	public function testProject():Bool;
	
	/**
	 * Specifies the ProjectItem object that represents the default document in the project.
	 */
	public var defaultItem(default, default):ProjectItem;
	
	/**
	 * An array of ProjectItem objects (see ProjectItem object) contained in the project (read-only property).
	 */
	public var items(default, null):Array<ProjectItem>;
	
	/**
	 * The name of the project that appears in the Project panel.
	 */
	public var name(default, default):String;
	
	/**
	 * A string representing the path and name of the project file, expressed as a file:/// URI (read-only property).
	 */
	public var projectURI(default, null):String;
	
}
