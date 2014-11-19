package jsfl;

/**
 * This object contains all the properties for all filters. The filter.name property specifies the type of filter,
 * and determines which properties are applicable to each filter. See filter.name.
 * 
 * To return the filter list for an object or objects, use document.getFilters().
 * To apply filters to an object or objects, use document.setFilters(). See document.getFilters() and document.setFilters() 
 */
@:native("Filter")
extern class Filter {
	/**
	 * A float value that specifies the angle of the shadow or highlight color, in degrees.
	 */
	public var angle(default, default):Float;
	
	/**
	 * A float value that specifies the amount to blur in the x direction, in pixels.
	 */
	public var blurX(default, default):Float;
	
	/**
	 * A float value that specifies the amount to blur in the y direction.
	 */
	public var blurY(default, default):Float;
	
	/**
	 * A float value that specifies the brightness of the filter.
	 */
	public var brightness(default, default):Float;
	
	/**
	 * A string, hexadecimal value, or integer that represents the filter color.
	 */
	public var color(default, default):Dynamic;
	
	/**
	 * A float value that specifies the contrast value of the filter.
	 */
	public var contrast(default, default):Float;
	
	/**
	 * A float value that specifies the distance between the filter’s effect and an object, in pixels.
	 */
	public var distance(default, default):Float;
	
	/**
	 * A Boolean value that specifies whether the specified filter is enabled.
	 */
	public var enabled(default, default):Bool;
	
	/**
	 * A Boolean value that specifies whether the source image is hidden.
	 */
	public var hideObject(default, default):Bool;
	
	/**
	 * A string, hexadecimal value, or integer that represents the highlight color.
	 */
	public var highlightColor(default, default):Dynamic;
	
	/**
	 * A float value that specifies the hue of the filter.
	 */
	public var hue(default, default):Float;
	
	/**
	 * A Boolean value that specifies whether the shadow is an inner shadow.
	 */
	public var inner(default, default):Bool;
	
	/**
	 * A Boolean value that specifies whether the filter is a knockout filter.
	 */
	public var knockout(default, default):Bool;
	
	/**
	 * Read-only; a string that specifies the type of filter.
	 */
	public var name(default, null):FilterType;
	
	/**
	 * A string that specifies the blur quality.
	 */
	public var quality(default, default):String;
	
	/**
	 * A float value that specifies the saturation value of the filter.
	 */
	public var saturation(default, default):Float;
	
	/**
	 * A string, hexadecimal value, or integer that represents the shadow color.
	 */
	public var shadowColor(default, default):Dynamic;
	
	/**
	 * An integer that specifies the percentage strength of the filter.
	 */
	public var strength(default, default):Int;
	
	/**
	 * A string that specifies the type of bevel or glow.
	 */
	public var type(default, default):String;

}
