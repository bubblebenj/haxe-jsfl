package jsfl;

import jsfl.Math;

/**
 * The Shape object is a subclass of the Element object.
 * The Shape object provides more precise control than the drawing APIs when manipulating or creating geometry on the Stage.
 * This control is necessary so that scripts can create useful effects and other drawing commands (see Element object).
 * 
 * All Shape methods and properties that change a shape or any of its subordinate parts must be placed between shape.beginEdit() and shape.endEdit() calls to function correctly.
 */
@:native("Shape")
extern class Shape extends Element {
	
	/**
	 * Defines the start of an edit session.
	 */
	public function beginEdit():Void;
	
	/**
	 * Deletes the specified edge.
	 * @param	index A zero-based index that specifies the edge to delete from the shape.edges array. This method changes the length of the shape.edges array.
	 */
	public function deleteEdge(index:Int):Void;
	
	/**
	 * Defines the end of an edit session for the shape.
	 */
	public function endEdit():Void;
	
	/**
	 * Returns an array of points that define a cubic curve.
	 * @param	cubicSegmentIndex An integer that specifies the cubic segment for which points are returned.
	 * @return An array of points that define a cubic curve for the Edge object that corresponds to the specified cubicSegmentIndex.
	 */
	@:require(jsfl_version >= CS4)
	public function getCubicSegmentPoints(cubicSegmentIndex:Int): Array<JSFLPoint>;
	
	/**
	 * Read-only; an array of Contour objects for the shape (see Contour object).
	 */
	public var contours(default, null):Array<Contour>;
	
	/**
	 * Read-only; an array of Edge objects (see Edge object).
	 */
	public var edges(default, null):Array<Edge>;
	
	/**
	 * Read-only; if true, the shape is a drawing object.
	 */
	@:require(jsfl_version >= FlashPro8)
	public var isDrawingObject(default, null):Bool;
	
	/**
	 * Read-only; if true, the shape is floating above the parent frame's (or group's) shape.
	 */
	@:require(jsfl_version >= CS6)
	public var isFloating(default, null):Bool;
	
	/**
	 * Read-only; if true, the shape is a group.
	 */
	public var isGroup(default, null):Bool;
	
	/**
	 * Read-only; if true, the shape is a primitive Oval object (was created using the Oval tool).
	 */
	@:require(jsfl_version >= CS3)
	public var isOvalObject(default, null):Bool;
	
	/**
	 * Read-only; if true, the shape is a primitive Rectangle object (was created using the Rectangle tool).
	 */
	@:require(jsfl_version >= CS3)
	public var isRectangleObject(default, null):Bool;
	
	/**
	 * An array of objects in the currently selected group.
	 */
	@:require(jsfl_version >= CS4)
	public var members(default, default):Array<Dynamic>;
	
	/**
	 * Read-only; the number of cubic segments in the shape.
	 */
	@:require(jsfl_version >= CS4)
	public var numCubicSegments(default, null):Int;
	
	/**
	 * Read-only; an array of Vertex objects (see Vertex object).
	 */
	public var vertices(default, null):Array<Vertex>;
	
}