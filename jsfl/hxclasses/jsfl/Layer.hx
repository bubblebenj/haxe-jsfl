package jsfl;

/**
 * The Layer object represents a layer in the timeline. The timeline.layers property contains an array of Layer objects, which can be accessed by fl.getDocumentDOM().getTimeline().layers.
 */
@:native("Layer")
extern class Layer {

	/**
	 * The layer type: "none", "motion object", or "IK pose".
	 */
	@:require(jsfl_version >= CS6)
	public var animationType(default, default):String;
	
	/**
	 * A string, hexadecimal value, or integer that specifies the color assigned to outline the layer.
	 */
	public var color(default, default):Dynamic;
	
	/**
	 * Read-only; an integer that specifies the number of frames in the layer.
	 */
	public var frameCount(default, null):Int;
	
	/**
	 * Read-only; an array of Frame objects.
	 */
	public var frames(default, null):Array<Frame>;
	/**
	 * An integer that specifies the percentage layer height; equivalent to the Layer height value in the Layer Properties dialog box.
	 */
	public var height(default, default):Int;
	
	/**
	 * A string that specifies the current use of the layer; equivalent to the Type setting in the Layer Properties dialog box.
	 */
	public var layerType(default, default):LayerType;
	
	/**
	 * A Boolean value that specifies the locked status of the layer.
	 */
	public var locked(default, default):Bool;
	
	/**
	 * A string that specifies the name of the layer.
	 */
	public var name(default, default):String;
	
	/**
	 * A Boolean value that specifies the status of outlines for all objects in the layer.
	 */
	public var outline(default, default):Bool;
	
	/**
	 * A Layer object that represents the layer’s containing folder, guiding, or masking layer.
	 */
	public var parentLayer(default, default):Layer;
	
	/**
	 * A Boolean value that specifies whether the layer’s objects on the Stage are shown or hidden.
	 */
	public var visible(default, default):Bool;

}