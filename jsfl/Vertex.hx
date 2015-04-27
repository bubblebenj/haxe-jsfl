package jsfl;

/**
 * The Vertex object is the part of the shape data structure that holds the coordinate data.
 */
@:native("Vertex")
extern class Vertex {

	/**
	 * Gets a HalfEdge object that shares this vertex.
	 * @return A HalfEdge object.
	 */
	public function getHalfEdge(): HalfEdge;
	
	/**
	 * Sets the location of the vertex.
	 * @param	x A floating-point value that specifies the x coordinate of where the vertex should be positioned, in pixels.
	 * @param	y A floating-point value that specifies the y coordinate of where the vertex should be positioned, in pixels.
	 */
	public function setLocation(x: Float, y: Float): Void;
	
	/**
	 * Read-only; the x location of the vertex in pixels.
	 */
	public var x(default, null): Float;
	
	/**
	 * Read-only; the y location of the vertex in pixels.
	 */
	public var y(default, null): Float;

}
