package jsfl;

/**
 * The Parameter object type is accessed from the componentInstance.parameters array (which corresponds to the component Property inspector in the authoring tool).
 */
@:native("Parameter")
extern class Parameter {
	
	/**
	 * Inserts an item into an object or array.
	 * @param	name A string that specifies the name of the item to insert. This is a required parameter for object parameters.
	 * @param	value A string that specifies the value of the item to insert.
	 * @param	type A string that specifies the type of item to insert.
	 */
	 public function insertItem(name:String, value:String, type:String):Void;
	
	/**
	 * Removes an element of the object or array type of a screen or component parameter.
	 */
	public function removeItem():Void;
	
	/**
	 * A string that specifies the category property for the screen parameter or componentInstance parameter.
	 */
	public var category(default, default):String;
	
	/**
	 * An integer that specifies the value of the selected list item.
	 */
	public var listIndex(default, default):Int;
	
	/**
	 * Read-only; a string that specifies the name of the parameter.
	 */
	public var name(default, null):String;
	
	/**
	 * Corresponds to the Value field in the Parameters tab of the Component inspector, the Parameters tab of the Property inspector, or the screen Property inspector.
	 */
	public var value(default, default):String;
	
	/**
	 * Read-only; a string that indicates the type of the screen or component parameter.
	 */
	public var valueType(default, null):String;
	
	/**
	 * Specifies where the parameter is displayed.
	 */
	public var verbose(default, default):String;
	
}
