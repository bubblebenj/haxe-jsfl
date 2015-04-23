package jsfl;

/**
 * The HalfEdge object is the directed side of the edge of a Shape object.
 * An edge has two half edges.
 * You can transverse the contours of a shape by “walking around” these half edges.
 * For example, starting from a half edge, you can trace all the half edges around a contour of a shape, and return to the original half edge.
 * 
 * Half edges are ordered.
 * One half edge represents one side of the edge; the other half edge represents the other side.
 */
@:native("HalfEdge")
@:build(jsfl.haxe.Config.build())
extern class HalfEdge {

	/**
	 * Gets the Edge object for the HalfEdge object.
	 * @return An Edge object.
	 */
	public function getEdge():Edge;
	
	/**
	 * Gets the next half edge on the current contour.
	 * @return A HalfEdge object.
	 */
	public function getNext():HalfEdge;
	
	/**
	 * Gets the Edge object for the HalfEdge object.
	 * @return A HalfEdge object.
	 */
	public function getOppositeHalfEdge():HalfEdge;
	
	/**
	 * Gets the preceding HalfEdge object on the current contour.
	 * @return A HalfEdge object.
	 */
	public function getPrev():HalfEdge;
	
	/**
	 * Gets the Vertex object at the head of the HalfEdge object.
	 * @return A Vertex object
	 */
	public function getVertex():Vertex;
	
	/**
	 * Read-only; a unique integer identifier for the HalfEdge object.
	 */
	public var id(default, null):Int;
	
	/**
	 * Read-only property; an integer with a value of 0 or 1 that specifies the index for this HalfEdge object in the parent edge.
	 */
	@:jsflVersion({ added: CC })
	public var index(default, null):Int;

}