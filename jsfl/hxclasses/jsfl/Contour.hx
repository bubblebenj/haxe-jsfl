package jsfl;

/**
 * A Contour object represents a closed path of half edges on the boundary of a shape.
 */
@:native("Contour")
extern class Contour {

	/**
	 * Returns a HalfEdge object on the contour of the selection.
	 * @return A HalfEdge object.
	 */
	public function getHalfEdge():HalfEdge;
	
	/**
	 * A Fill object.
	 */
	public var fill(default, default):Fill;
	
	/**
	 * Read-only; the value is true if the contour encloses an area; false otherwise.
	 */
	public var interior(default, null):Bool;
	
	/**
	 * Read-only; an integer indicating the orientation of the contour.
	 */
	public var orientation(default, null):Int;

}
