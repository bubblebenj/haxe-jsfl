package jsfl;

/**
 * The drawingLayer object is accessible from JavaScript as a child of the flash object.
 * The drawingLayer object is used for extensible tools when the user wants to temporarily draw while dragging—for example, when creating a selection marquee.
 * You should call drawingLayer.beginFrame() before you call any other drawingLayer methods.
 */
@:native("DrawingLayer")
extern class DrawingLayer {
	
	/**
	 * Puts Flash in drawing mode
	 * @param	persistentDraw If set to true, it indicates that the drawing in the last frame remains on the Stage until a new beginDraw() or beginFrame() call is made. (In this context, frame refers to where you start and end drawing; it does not refer to timeline frames.)
	 */
	public function beginDraw(?persistentDraw:Bool):Void;
	
	/**
	 * Erases what was previously drawn using the drawingLayer and prepares for more drawing commands.
	 */
	public function beginFrame():Void;
	
	/**
	 * Draws a cubic curve from the current pen location using the parameters as the coordinates of the cubic segment.
	 * @param	x1Ctl x location of the first control point.
	 * @param	y1Ctl y location of the first control point.
	 * @param	x2Ctl x position of the middle control point.
	 * @param	y2Ctl y position of the middle control point.
	 * @param	xEnd x position of the end control point.
	 * @param	yEnd y position of the end control point.
	 */
	public function cubicCurveTo(x1Ctl:Float, y1Ctl:Float, x2Ctl:Float, y2Ctl:Float, xEnd:Float, yEnd:Float):Void;
	
	/**
	 * Draws a quadratic curve segment starting at the current drawing position and ending at a specified point.
	 * @param	xCtl x position of the control point.
	 * @param	yCtl y position of the control point.
	 * @param	xEnd x position of the end control point.
	 * @param	yEnd y position of the end control point.
	 */
	public function curveTo(xCtl:Float, yCtl:Float, xEnd:Float, yEnd:Float):Void;
	
	/**
	 * Draws the specified path.
	 * @param	path A Path object to draw.
	 */
	public function drawPath(path:Path):Void;
	
	/**
	 * Exits drawing mode.
	 */
	public function endDraw():Void;
	
	/**
	 * Signals the end of a group of drawing commands.
	 */
	public function endFrame():Void;
	
	/**
	 * Draws a line from the current drawing position to the point (x,y).
	 * @param	x specifies the x coordinate of the end point of the line to draw.
	 * @param	y specifies the y coordinate of the end point of the line to draw.
	 */
	public function lineTo(x:Float, y:Float):Void;
	
	/**
	 * Sets the current drawing position.
	 * @param	x specifies the x coordinate of the position at which to start drawing.
	 * @param	y specifies the y coordinate of the position at which to start drawing.
	 */
	public function moveTo(x:Float, y:Float):Void;
	
	/**
	 * Returns a new Path object.
	 * @return A Path object.
	 */
	public function newPath():Path;
	
	/**
	 * Sets the color of subsequently drawn data.
	 * @param	color The color of subsequently drawn data, in one of the following formats:
		• A string in the format "#RRGGBB" or "#RRGGBBAA"
		• A hexadecimal number in the format 0xRRGGBB
		• An integer that represents the decimal equivalent of a hexadecimal number
	 */
	public function setColor(color:String):Void;
	
	/**
	 * This method is not available.
	 */
	public function setFill():Void;
	
	/**
	 * This method is not available.
	 */
	public function setStroke():Void;

}
