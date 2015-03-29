package jsfl;

/**
 * The Oval object is a shape that is drawn using the Oval Primitive tool. To determine if an item is an Oval object, use shape.isOvalObject.
 */
@:native("Oval")
@:require(jsfl_version >= CS3)
extern class Oval extends Shape{
	
	/**
	 * Read-only; a Boolean value that specifies whether the Close Path check box in the Property inspector is selected.
	 */
	@:require(jsfl_version >= CS3)
	public var closePath(default, null):Bool;
	
	/**
	 * Read-only; a float value that specifies the end angle of the Oval object.
	 */
	@:require(jsfl_version >= CS3)
	public var endAngle(default, null):Float;
	
	/**
	 * Read-only; a float value that specifies the inner radius of the Oval object as a percentage.
	 */
	@:require(jsfl_version >= CS3)
	public var innerRadius(default, null):Float;
	
	/**
	 * Read-only; a float value that specifies the start angle of the Oval object.
	 */
	@:require(jsfl_version >= CS3)
	public var startAngle(default, null):Float;

}
