package jsfl;

/**
 * The Parameter object type is accessed from the componentInstance.parameters array (which corresponds to the component Property inspector in the authoring tool).
 */
@:native("Parameter")
@:build(jsfl.haxe.Config.build())
extern class Parameter {
	
	/**
	 * Inserts an item into an object or array.
	 * @param	index A zero-based integer index that indicates where the item will be inserted in the object or array. If the index is 0, the item is inserted at the beginning. If the index is greater than the list size, the new item is inserted at the end.
	 * @param	name A string that specifies the name of the item to insert. This is a required parameter for object parameters.
	 * @param	value A string that specifies the value of the item to insert.
	 * @param	type A string that specifies the type of item to insert.
	 */
	public function insertItem(index: Int, name: String, value: String, type: String): Void;
	
	/**
	 * Removes an element of the object or array type of a screen or component parameter.
	 * @param	index The zero-based integer index of the item to be removed from the screen or component property.
	 */
	public function removeItem(index: Int): Void;
	
	/**
	 * A string that specifies the category property for the screen parameter or componentInstance parameter.
	 */
	public var category(default, default): String;
	
	/**
	 * An integer that specifies the value of the selected list item.
	 */
	public var listIndex(default, default): Int;
	
	/**
	 * Read-only; a string that specifies the name of the parameter.
	 */
	public var name(default, null): String;
	
	/**
	 * Corresponds to the Value field in the Parameters tab of the Component inspector, the Parameters tab of the Property inspector, or the screen Property inspector.
	 */
	public var value(default, default): Dynamic;
	
	/**
	 * Read-only; a string that indicates the type of the screen or component parameter.
	 */
	public var valueType(default, null): ParameterType;
	
	/**
	 * Specifies where the parameter is displayed.
	 */
	public var verbose(default, default): Int;
	
}