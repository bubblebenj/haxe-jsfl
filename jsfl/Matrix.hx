package jsfl;

/**
 * The Matrix object represents a transformation matrix.
 */
@:native("Matrix")
@:build(jsfl.haxe.Config.build())
extern typedef Matrix = {
	
	/**
	 * A floating-point value that specifies the (0,0) element in the transformation matrix.
	 */
	public var a(default, default):Float;
	
	/**
	 * A floating-point value that specifies the (0,1) element in the matrix.
	 */
	public var b(default, default):Float;
	
	/**
	 * A floating-point value that specifies the (1,0) element in the matrix.
	 */
	public var c(default, default):Float;
	
	/**
	 * A floating-point value that specifies the (1,1) element in the matrix.
	 */
	public var d(default, default):Float;
	
	/**
	 * A floating-point value that specifies the x-axis location of a symbol’s registration point or the center of a shape.
	 */
	public var tx(default, default):Float;
	
	/**
	 * A floating-point value that specifies the y-axis location of a symbol’s registration point or the center of a shape.
	 */
	public var ty(default, default):Float;
	
}
