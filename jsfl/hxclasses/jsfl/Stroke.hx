package jsfl;

/**
 * The Stroke object contains all the settings for a stroke, including the custom settings.
 * This object represents the information contained in the Property inspector.
 * Using the Stroke object together with the document.setCustomStroke() method, you can change the stroke settings for the Tools panel, the Property inspector, and the current selection.
 * You can also get the stroke settings of the Tools panel and Property inspector, or of the current selection, by using the document.getCustomStroke() method.
 * 
 * This object always has the following four properties: style, thickness, color, and breakAtCorners.
 * (In Flash CS3, the breakAtCorners property was deprecated in favor of stroke.joinType.) Other properties can be set, depending on the value of the stroke.style property.
 */
@:native("Stroke")
@:build(jsfl.haxe.Config.build())
extern class Stroke {
	
	/**
	 * A Boolean value, same as the Sharp Corners setting in the custom Stroke Style dialog box.
	 */
	public var breakAtCorners(default, default):Bool;
	
	/**
	 * A string that specifies the type of cap for the stroke.
	 */
	@:jsflVersion({ added: FlashPro8 })
	public var capType(default, default):String;
	
	/**
	 * A string, hexadecimal value, or integer that represents the stroke color.
	 */
	public var color(default, default):Dynamic;
	
	/**
	 * A string that specifies the type of hatching for the stroke.
	 */
	public var curve(default, default):String;
	
	/**
	 * An integer that specifies the lengths of the solid part of a dashed line.
	 */
	public var dash1(default, default):Int;
	
	/**
	 * An integer that specifies the lengths of the blank part of a dashed line.
	 */
	public var dash2(default, default):Int;
	
	/**
	 * A string that specifies the density of a stippled line.
	 */
	public var density(default, default):String;
	
	/**
	 * A string that specifies the dot size of a stippled line.
	 */
	public var dotSize(default, default):String;
	
	/**
	 * An integer that specifies the spacing between dots in a dotted line.
	 */
	public var dotSpace(default, default):Int;
	
	/**
	 * A string that specifies the thickness of a hatch line.
	 */
	public var hatchThickness(default, default):String;
	
	/**
	 * A string that specifies the jiggle property of a hatched line.
	 */
	public var jiggle(default, default):String;
	
	/**
	 * A string that specifies the type of join for the stroke.
	 */
	@:jsflVersion({ added: FlashPro8 })
	public var joinType(default, default):String;
	
	/**
	 * A string that specifies the length of a hatch line.
	 */
	public var length(default, default):String;
	
	/**
	 * A float value that specifies the angle above which the tip of the miter will be truncated by a segment.
	 */
	@:jsflVersion({ added: FlashPro8 })
	public var miterLimit(default, default):Float;
	
	/**
	 * A string that specifies the pattern of a ragged line.
	 */
	public var pattern(default, default):String;
	
	/**
	 * A string that specifies the rotation of a hatch line.
	 */
	public var rotate(default, default):String;
	
	/**
	 * A string that specifies the type of scale to be applied to the stroke.
	 */
	@:jsflVersion({ added: FlashPro8 })
	public var scaleType(default, default):String;
	
	/**
	 * A string that specifies the spacing of a hatched line.
	 */
	@:jsflVersion({ added: FlashPro8 })
	public var shapeFill(default, default):Fill;
	
	/**
	 * A string that specifies the wave length of a ragged line.
	 */
	public var space(default, default):String;
	
	/**
	 * A Boolean value that specifies whether stroke hinting is set on the stroke.
	 */
	@:jsflVersion({ added: FlashPro8 })
	public var strokeHinting(default, default):Bool;
	
	/**
	 * A string that describes the stroke style.
	 */
	public var style(default, default):String;
	
	/**
	 * An integer that specifies the stroke size.
	 */
	public var thickness(default, default):Int;
	
	/**
	 * A string that specifies the variation of a stippled line.
	 */
	public var variation(default, default):String;
	
	/**
	 * A string that specifies the wave height of a ragged line.
	 */
	public var waveHeight(default, default):String;
	
	/**
	 * A string that specifies the wave length of a ragged line.
	 */
	public var waveLength(default, default):String;

}