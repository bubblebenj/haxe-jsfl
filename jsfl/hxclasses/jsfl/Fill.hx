package jsfl;
	
/**
 * This object contains all the properties of the Fill color setting of the Tools panel or of a selected shape.
 * To retrieve a Fill object, use document.getCustomFill().
 */
@:native("Fill")
extern class Fill {
	
	/**
	 * A Boolean value that specifies whether the bitmap fill for a shape that is larger than the bitmap is clipped or repeated.
	 */
	@:require(flpro_version >= CS4)
	public var bitmapIsClipped(default, default):Bool;
	
	/**
	 * A string that specifies the path and name of the bitmap fill in the Library.
	 */
	@:require(flpro_version >= CS4)
	public var bitmapPath(default, default):String;
	
	/**
	 * A string, hexadecimal value, or integer that represents the fill color.
	 */
	public var color(default, default):Dynamic;
	
	/**
	 * An array of colors in gradient.
	 */
	public var colorArray(default, default):Array<Dynamic>;
	
	/**
	 * An integer that specifies the gradient focal point horizontal offset from the transformation point.
	 */
	@:require(flpro_version >= Flash8)
	public var focalPoint(default, default):Int;
	
	/**
	 * A Boolean value that specifies whether to render the fill as a linear or radial RGB gradient.
	 */
	public var linearRGB(default, default):Bool;
	
	/**
	 * A Matrix object that defines the placement, orientation, and scales for gradient fills.
	 */
	public var matrix(default, default):Matrix;
	
	/**
	 * A string that specifies the behavior of a gradient’s overflow.
	 */
	public var overflow(default, default):String;
	
	/**
	 * An array of integers, each in the range of zero to 255, indicating the position of the corresponding color.
	 */
	public var posArray(default, default):Array<Int>;
	
	/**
	 * A string that specifies the fill style.
	 */
	public var style(default, default):String;
}