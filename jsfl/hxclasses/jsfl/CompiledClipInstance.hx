package jsfl;

/**
 *  The CompiledClipInstance object is essentially an instance of a movie clip that has been converted to a compiled clip library item
 */
@:native("CompiledClipInstance")
extern class CompiledClipInstance extends Instance {
	
	/**
	 * A string that is equivalent to the Name field in the Accessibility panel.
	 */
	public var accName(default, default):String;
	
	/**
	 * A string that specifies the matte color when Opaque is selected.
	 * Availability: Flash Professional CC.
	 */
	public var backgroundColor(default, default):String;
	
	/**
	 * A string that specifies the blend mode.
	 * Availability: Flash Professional CC.
	 */
	public var blendMode(default, default):String;
	
	/**
	 * An int that contains the value set in the Color Effect Property Inspector for brightness.
	 * Specify a percentage between -100 and 100.
	 * Availability: Flash Professional CC.
	 */
	public var brightness(default, null):Int;
	
	/**
	 * A boolean that indicates whether to cache bitmaps.
	 * The default is false 
	 * Availability: Flash Professional CC.
	 */
	public var cacheAsBitmap(default, default):Bool;
	
	/**
	 * An int that reduces or increases the tint and alpha values by a constant amount
	 * Valid values are -255 to 255.
	 * Availability: Flash Professional CC.
	 */
	public var colorAlphaAmount(default, default):Int;
	
	/**
	 * An int that reduces the tint and alpha values by a specified percentage.
	 * Valid values are -100 to 100.
	 * Availability: Flash Professional CC.
	 */
	public var colorAlphaPercent(default, default):Int;
	
	/**
	 * An int that reduces or increases the blue tint value by a constant amount.
	 * Valid values are -255 to 255.
	 * Availability: Flash Professional CC.
	 */
	public var colorBlueAmount(default, default):Int;
	
	/**
	 * An int that reduces the blue tint value by a specified percentage.
	 * Valid values are -100 to 100.
	 * Availability: Flash Professional CC.
	 */
	public var colorBluePercent(default, default):Int;
	
	/**
	 * An int that reduces or increases the green tint value by a constant amount.
	 * Valid values are -255 to 255.
	 * Availability: Flash Professional CC.
	 */
	public var colorGreenAmount(default, default):Int;
	
	/**
	 * An int that reduces the green tint value by a specified percentage.
	 * Valid values are -100 to 100.
	 * Availability: Flash Professional CC.
	 */
	public var colorGreenPercent(default, default):Int;
	
	/**
	 * A string that specifies the color mode, as identified in the Symbol Properties dialog.
	 * Availability: Flash Professional CC.
	 */
	public var colorMode(default, default):ColorMode;
	
	/**
	 * An int that reduces or increases the red tint value by a constant amount.
	 * Valid values are -255 to 255.
	 * Availability: Flash Professional CC.
	 */
	public var colorRedAmount(default, default):Int;
	
	/**
	 * An int that reduces the green tint value by a specified percentage.
	 * Valid values are -100 to 100.
	 * Availability: Flash Professional CC.
	 */
	public var colorRedPercent(default, default):Int;
	
	/**
	 * A string that is equivalent to the Description field in the Accessibility panel.
	 */
	public var description(default, default):String;
	
	/**
	 * an array of Filter objects.
	 * Availability: Flash Professional CC.
	 */
	public var filters(default, default):Array<Filter>;
	
	/**
	 * a Boolean value that enables and disables the children of the object to be accessible.
	 */
	public var forceSimple(default, default):Bool;
	
	/**
	 * a string that is equivalent to the Shortcut field in the Accessibility panel.
	 * Not available for dynamic text fields.
	 */
	public var shortcut(default, default):String;
	
	/**
	 * A Boolean value that enables or disables the accessibility of the object;
	 * equivalent to the inverse logic of the Make Object Accessible setting in the Accessibility panel.
	 */
	public var silent(default, default):String;
	
	/**
	 * An integer that is equivalent to the Tab Index field in the Accessibility panel.
	 */
	public var tabIndex(default, default):Int;
	
	/**
	 * A Color object that, when the Color Effect Property Inspector is using style tint, returns the color applied to the tint.
	 * returns the tint percentage from -100 to 100
	 * Availability: Flash Professional CC.
	 */
	public var tintColor(default, null):Int;
	
	/**
	 * A string that, when the Color Effect Property Inspector is using style tint,
	 * returns the tint percentage.
	 * Availability: Flash Professional CC.
	 */
	public var tintPercent(default, null):String;
	
	/**
	 * A boolean that sets the background color:
	 * true - Use 32-bit with alpha. false - Use the background color.
	 * Availability: Flash Professional CC.
	 */
	public var useBackgroundColor(default, default):Bool;
	
	/**
	 * A boolean that sets visibility
	 * Availability: Flash Professional CC.
	 */
	public var visible(default, default):Bool;
	
}
