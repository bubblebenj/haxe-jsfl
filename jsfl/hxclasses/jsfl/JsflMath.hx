package jsfl;

typedef JSFLPoint = {
	x:Float,
	y:Float
}

typedef JSFLPoint3D = {
	x:Float,
	y:Float,
	z:Float
}

typedef JSFLRect = {
	top:Float,
	left:Float,
	bottom:Float,
	right:Float
}

/**
 * The Math object is available as a read-only property of the flash object; see fl.Math.
 * This object provides methods that perform common mathematical operations.
 */
extern class JsflMath {

	/**
	 * Performs a matrix concatenation and returns the result.
	 * @param	mat1 Specify the 1st Matrix objects to be concatenated.
	 * @param	mat2 Specify the 2nd Matrix objects to be concatenated.
	 * @return A concatenated object matrix.
	 */
	public function concatMatrix(mat1:Matrix, mat2:Matrix):Matrix;
	
	/**
	 * Returns the inverse of the specified matrix
	 * @param	mat Indicates the Matrix object to invert.
	 * @return A Matrix object that is the inverse of the original matrix.
	 */
	public function invertMatrix(mat:Matrix):Matrix;
	
	/**
	 * Computes the distance between two points.
	 * @param	pt1 Specify the 1st end point.
	 * @param	pt2 Specify the 2nd end point.
	 * @return A floating-point value that represents the distance between the points.
	 */
	public function pointDistance(pt1: { x:Float, y:Float }, pt2: { x:Float, y:Float }):Float;
	
	/**
	 * Applies a matrix to a point.
	 * @param	matrix Contains the matrix obejct applied to the point.
	 * @param	point Contains the point to which the matrix is applied.
	 * @return The transformed point.
	 */
	public function transformPoint(matrix:Matrix, point:{ x:Float, y:Float }):{ x:Float, y:Float };
}
