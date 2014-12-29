package jsfl;

/**
 * SymbolInstance is a subclass of the Instance object and represents a symbol in a frame (see Instance object).
 */
@:native("SymbolInstance")
extern class SymbolInstance extends Instance {

	/**
	 * A string that is equivalent to the Name field in the Accessibility panel.
	 */
	public var accName(default, default):String;
	
	/**
	 * a string that specifies the actions assigned to the symbol. This applies only to movie clip and button instances. For a graphic symbol instance, the value returns undefined
	 */
	@:require(flpro_version < CC)
	public var actionScript:String;

	/**
	 * A string specifying the matte color when Opaque is selected.
	 */
	@:require(flpro_version >= CS5)
	public var backgroundColor(default, default):String;
	
	/**
	 * A string specifying the display type for a symbol instance.
	 */
	@:require(flpro_version >= CS5)
	public var bitmapRenderMode(default, default):String;
	
	/**
	 * A string that specifies the blending mode to be applied to a movie clip symbol.
	 */
	@:require(flpro_version >= Flash8)
	public var blendMode(default, default):String;
	
	/**
	 * An integer that returns the value set in the color effect Property Inspector for brightness (percentage between -100 and 100) when colorMode == 'brightness'.
	 */
	@:require(flpro_version >= CC)
	public var brightness(default, null):Int;
	
	/**
	 * A string (button symbols only) that sets the same property as the pop-up menu for Track as Button or Track As Menu Item in the Property inspector.
	 */
	public var buttonTracking(default, default):String;
	
	/**
	 * A Boolean value that specifies whether run-time bitmap caching is enabled.
	 */
	@:require(flpro_version >= Flash8)
	public var cacheAsBitmap(default, default):Bool;
	
	/**
	 * An integer that is part of the color transformation for the instance, specifying the Advanced Effect Alpha settings; equivalent to using the Color > Advanced setting in the Property inspector and adjusting the controls on the right of the dialog box.
	 */
	public var colorAlphaAmount(default, default):Int;
	
	/**
	 * An integer that specifies part of the color transformation for the instance; equivalent to using the Color > Advanced setting in the instance Property inspector (the percentage controls on the left of the dialog box).
	 */
	public var colorAlphaPercent(default, default):Int;
	
	/**
	 * An integer that is part of the color transformation for the instance; equivalent to using the Color > Advanced setting in the instance Property inspector.
	 */
	public var colorBlueAmount(default, default):Int;
	
	/**
	 * An integer that is part of the color transformation for the instance; equivalent to using the Color > Advanced setting in the instance Property inspector (the percentage controls on the left of the dialog box).
	 */
	public var colorBluePercent(default, default):Int;
	
	/**
	 * An integer that is part of the color transformation for the instance; equivalent to using the Color > Advanced setting in the instance Property inspector. Allowable values are from -255 to 255.
	 */
	public var colorGreenAmount(default, default):Int;
	
	/**
	 * Part of the color transformation for the instance; equivalent to using the Color > Advanced setting in the instance Property inspector (the percentage controls on the left of the dialog box).
	 */
	public var colorGreenPercent(default, default):Int;
	
	/**
	 * A string that specifies the color mode as identified in the symbol Property inspector Color pop-up menu.
	 */
	public var colorMode(default, default):ColorMode;
	
	/**
	 * An integer that is part of the color transformation for the instance, equivalent to using the Color > Advanced setting in the instance Property inspector.
	 */
	public var colorRedAmount(default, default):Int;
	
	/**
	 * Part of the color transformation for the instance; equivalent to using the Color > Advanced setting in the instance Property inspector (the percentage controls on the left of the dialog box).
	 */
	public var colorRedPercent(default, default):Int;
	
	/**
	 * A string that is equivalent to the Description field in the Accessibility panel.
	 */
	public var description(default, default):String;
	
	/**
	 * An array of Filter objects (see Filter object).
	 */
	@:require(flpro_version >= Flash8)
	public var filters(default, default)::Array<Filter>;
	
	/**
	 * A zero-based integer that specifies the first frame to appear in the timeline of the graphic.
	 */
	public var firstFrame(default, default):Int;
	
	/**
	 * A Boolean value that enables and disables the accessibility of the object’s children; equivalent to the inverse logic of the Make Child Objects Accessible setting in the Accessibility panel.
	 */
	public var forceSimple(default, default):Bool;
	
	/**
	 * A Boolean value indicating whether the instance contains any 3D transforms.
	 */
	@:require(flpro_version >= CS6)
	public var is3D(default, null):Bool;
	
	/**
	 * A string that, for graphic symbols, sets the same property as the Loop pop-up menu in the Property inspector.
	 */
	public var loop(default, default):LoopType;
	
	/**
	 * A string that is equivalent to the shortcut key associated with the symbol; equivalent to the Shortcut field in the Accessibility panel.
	 */
	public var shortcut(default, default):String;
	
	/**
	 * A Boolean value that enables or disables the accessibility of the object; equivalent to the inverse logic of the Make Object Accessible setting in the Accessibility panel.
	 */
	public var silent(default, default):Bool;
	
	/**
	 * A string that specifies the type of symbol; equivalent to the value for Behavior in the Create New Symbol and Convert To Symbol dialog boxes.
	 */
	public var symbolType(default, default):SymbolType;
	
	/**
	 * An integer that is equivalent to the Tab index field in the Accessibility panel.
	 */
	public var tabIndex(default, default):Int;
	
	/**
	 * When the Color Effect Property Inspector is using style tint (colorMode == 'tint'), return the color applied to the tint.
	 */
	@:require(flpro_version >= CC)
	public var tintColor(default, null):Dynamic;
	
	/**
	 * When the color effect Property Inspector is using style tint (colorMode == 'tint') then return the applied to the tint percentage from -100 to 100.
	 */
	@:require(flpro_version >= CC)
	public var tintPercent(default, null):Int;
	
	/**
	 * A boolean value that specifies whether to use 24 bit mode or 32 bit mode with alpha for the instance.
	 */
	@:require(flpro_version >= CS5)
	public var useBackgroundColor(default, default):Bool;
	
	/**
	 * A boolean value specifying whether the instance is visible or not.
	 */
	@:require(flpro_version >= CS5)
	public var visible(default, default):Bool;

}

@:enum abstract LoopType(String) {
	var LOOP = "loop";
	var PLAY_ONCE = "play once";
	var SINGLE_FRAME = "single frame";
}
