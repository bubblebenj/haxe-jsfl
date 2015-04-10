package jsfl;

/**
 * The BitmapInstance object is a subclass of the Instance object and represents a bitmap in a frame (see Instance object).
 */
@:native("BitmapInstance")
@:build(jsfl.haxe.Config.build())
extern class BitmapInstance extends Instance {

	/**
	 * Lets you create bitmap effects by getting the bits out of the bitmap, manipulating them, and then returning them to Flash.
	 * @return An object that contains width, height, depth, bits, and, if the bitmap has a color table, cTab properties.
	 */
	public function getBits(): BitmapInstanceBits;
	
	/**
	 * Sets the bits of an existing bitmap element.
	 * @param	bitmap An object that contains height, width, depth, bits, and cTab properties.
	 */
	public function setBits(bitmap: BitmapInstanceBits): Void;
	
	/**
	 * Read-only; an integer that represents the width of the bitmap, in pixels.
	 */
	public var hPixels(default, null): Int;
	
	/**
	 * Read-only; an integer that represents the height of the bitmap, in pixels.
	 */
	public var vPixels(default, null): Int;
	
}

typedef BitmapInstanceBits = {
	var width: Int;
	var height: Int;
	var depth: Int;
	var bits: Array<Int>;
	@:optional var cTab: Array<String>;
}
