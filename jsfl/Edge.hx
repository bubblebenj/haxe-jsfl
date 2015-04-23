package jsfl;

import jsfl.Math;

/**
 * The Edge object represents an edge of a shape on the Stage.
 */
@:native("Edge")
@:build(jsfl.haxe.Config.build())
extern class Edge {

	/**
	 * Gets a point object set to the location of the specified control point of the edge.
	 * @param	i A zero-based integer that specifies which control point of the edge to return.
	 * @return The specified control point.
	 */
	public function getControl(i:Int):JSFLPoint;
	
	/**
	 * Returns a HalfEdge object.
	 * @param	index An integer that specifies which half edge to return. The value of index must be either 0 for the first half edge or 1 for the second half edge.
	 * @return A HalfEdge object.
	 */
	public function getHalfEdge(index:Int):HalfEdge;
	
	/**
	 * Sets the position of the control point of the edge.
	 * @param	index An integer that specifies which control point to set. Use values 0, 1, or 2 to specify the beginning, middle, and end control points, respectively.
	 * @param	x A floating-point value that specifies the horizontal location of the control point. If the Stage is in edit or edit-in-place mode, the point coordinate is relative to the edited object. Otherwise, the point coordinate is relative to the Stage.
	 * @param	y A floating-point value that specifies the vertical location of the control point. If the Stage is in edit or edit-in-place mode, the point coordinate is relative to the edited object. Otherwise, the point coordinate is relative to the Stage.
	 */
	public function setControl(index:Int, x:Float, y:Float):Void;
	
	/**
	 * Splits the edge into two pieces. You must call shape.beginEdit() before using this method.
	 * @param	t A floating-point value between 0 and 1 that specifies where to split the edge. A value of 0 represents one end point and a value of 1represents the other.
	 */
	public function splitEdge(t:Float):Void;
	
	/**
	 * An integer that specifies the index value of a cubic segment of the edge.
	 */
	@:jsflVersion({ added: CS4 })
	public var cubicSegmentIndex(default, null):Int;
	
	/**
	 * Read-only; an integer that represents a unique identifier for the edge.
	 */
	public var id(default, null):Int;
	
	/**
	 * Read-only; an integer with a value of 0 or 1.
	 */
	public var isLine(default, null):Int;
	
	/**
	 * A Stroke object.
	 */
	@:jsflVersion({ added: CS4 })
	public var stroke(default, default):Stroke;

}
