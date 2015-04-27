package jsfl;

/**
 * The Path object defines a sequence of line segments (straight, curved, or both), which you typically use when creating extensible tools.
 * The following example shows an instance of a Path object being returned from the flash object:
 * 		path = fl.drawingLayer.newPath();
 * See also the drawingLayer object.
 */
@:native("Path")
@:build(jsfl.haxe.Config.build())
extern class Path {

	/**
	 * Appends a cubic Bézier curve segment to the path.
	 * @param	xAnchor A floating-point number that specifies the x position of the first control point.
	 * @param	yAnchor A floating-point number that specifies the y position of the first control point.
	 * @param	x2 A floating-point number that specifies the x position of the second control point.
	 * @param	y2 A floating-point number that specifies the y position of the second control point.
	 * @param	x3 A floating-point number that specifies the x position of the third control point.
	 * @param	y3 A floating-point number that specifies the y position of the third control point.
	 * @param	x4 A floating-point number that specifies the x position of the fourth control point.
	 * @param	y4 A floating-point number that specifies the y position of the fourth control point.
	 */
	public function addCubicCurve(xAnchor: Float, yAnchor: Float, x2:Float, y2:Float, x3:Float, y3:Float, x4:Float, y4:Float): Void;
	
	/**
	 * Appends a quadratic Bézier segment to the path.
	 * @param	xAnchor A floating-point number that specifies the x position of the first control point.
	 * @param	yAnchor A floating-point number that specifies the y position of the first control point.
	 * @param	x2 A floating-point number that specifies the x position of the second control point.
	 * @param	y2 A floating-point number that specifies the y position of the second control point.
	 * @param	x3 A floating-point number that specifies the x position of the third control point.
	 * @param	y3 A floating-point number that specifies the y position of the third control point.
	 */
	public function addCurve(xAnchor: Float, yAnchor: Float, x2:Float, y2:Float, x3:Float, y3:Float): Void;
	
	/**
	 * Adds a point to the path.
	 * @param	x A floating-point number that specifies the x position of the point.
	 * @param	y A floating-point number that specifies the y position of the point.
	 */
	public function addPoint(x: Float, y: Float): Void;
	
	/**
	 * Removes all points from the path.
	 */
	public function clear(): Void;
	
	/**
	 * Appends a point at the location of the first point of the path and extends the path to that point, which closes the path.
	 */
	public function close(): Void;
	
	/**
	 * Creates a shape on the Stage by using the current stroke and fill settings.
	 * @param	bSuppressFill A Boolean value that, if set to true, suppresses the fill that would be applied to the shape.
	 * @param	bSuppressStroke A Boolean value that, if set to true, suppresses the stroke that would be applied to the shape.
	 */
	public function makeShape(?bSuppressFill: Bool = false, ?bSuppressStroke: Bool = false): Void;
	
	/**
	 * Starts a new contour in the path.
	 */
	public function newContour(): Void;
	
	/**
	 * Read-only; an integer representing the number of points in the path.
	 */
	public var nPts(default, null): Int;

}