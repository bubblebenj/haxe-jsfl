package jsfl;

/**
 * The Tween object can be used to access interpolated properties of tweens. Accessing properties for a non-tween frame throws errors.
 */
@:native("Tween")
@:require(jsfl_version >= CC)
extern class Tween {
	
	/**
	 * Returns color transformation data between frames.
	 * @param	frameIndex Offset index of interpolated frame.
	 * @return Value object {"colorAlphaAmount", "colorAlphaPercent", "colorRedAmount", "colorRedPercent", "colorGreenAmount", "colorGreenPercent", "colorBlueAmount", "colorBluePercent"}.
	 */
	public function getColorTransform(frameIndex:Int):{ colorAlphaAmount:Float, colorAlphaPercent:Float, colorRedAmount:Float, colorRedPercent:Float, colorGreenAmount:Float, colorGreenPercent:Float, colorBlueAmount:Float, colorBluePercent:Float };
	
	/**
	 * Returns filters data of a selected frame from a tween span.
	 * @param	frameIndex Index of the frame from which filter data is to be retrieved.
	 * @return Returns array of Filter objects.
	 */
	public function getFilters(frameIndex:Int):Array<Filter>;
	
	/**
	 * Returns Matrix object that represents geometric transformation of a tween within a user-defined range (from offset to a selected frame).
	 * @param	frameIndex Offset index of the frame from which geometric transformations have to be retrieved.
	 * @return Matrix object that represents geometric transformations at the frame offset.
	 */
	public function getGeometricTransform(frameIndex:Int):Matrix;
	
	/**
	 * Returns interpolated shape of a selected frame within a tween-span.
	 * @param	frameIndex Offset index of the frame from which shape data has to be retrieved.
	 * @return Returns shape coordinates at the frame offset.
	 */
	public function getShape(frameIndex:Int):Dynamic;
	
	/**
	 * Duration of a tween span that is equal to number of frames in a tween.
	 */
	public var duration(default, default):Float;
	
	/**
	 * Start frame of a tween.
	 */
	public var startFrame(default, default):Int;
	
	/**
	 * Specifies the type of tween.
	 */
	public var tweenType(default, default):TweenType;
	
}
