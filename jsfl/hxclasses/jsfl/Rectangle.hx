package jsfl;


/**
 * The Rectangle object is a shape that is drawn using the Rectangle Primitive tool.
 * To determine if an item is a Rectangle object, use shape.isRectangleObject
 */
@:native("Rectangle")
@:require(jsfl_version >= CS3)
extern class Rectangle extends Shape {

	/**
	 * Read-only; a float value that sets the radius of the bottom-left corner of the Rectangle object.
	 */
	public var bottomLeftRadius(default, null):Float;
	
	/**
	 * Read-only; a float value that sets the radius of the bottom-right corner of the Rectangle object.
	 */
	public var bottomRightRadius(default, null):Float;
	
	/**
	 * Read-only; a Boolean value that determines whether different corners of the rectangle can have different radius values.
	 */
	public var lockFlag(default, null):Bool;
	
	/**
	 * Read-only; a float value that sets the radius of all corners of the rectangle or that sets only the radius of the top-left corner of the Rectangle object.
	 */
	public var topLeftRadius(default, null):Float;
	
	/**
	 * Read-only; a float value that sets the radius of the top-right corner of the Rectangle object.
	 */
	public var topRightRadius(default, null):Float;

}