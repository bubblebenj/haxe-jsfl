package jsfl;

import jsfl.Math;

/**
 * Everything that appears on the Stage is of the type Element.
 * The following code example lets you select an element:
 * var el = fl.getDocumentDOM().getTimeline().layers[0].frames[0].elements[0];
 */
@:native("Element")
@:build(jsfl.haxe.Config.build())
extern class Element {

	/**
	 * Retrieves the value of the data specified by the name parameter.
	 * @param	name A string that identifies the data to be returned.
	 * @return The data specified by the name parameter, or 0 if the data doesn’t exist.
	 */
	public function getPersistentData(name:String):Dynamic;

	/**
	 * True if the specified persistent data is enable for the specified format; otherwise False 
	 * @param	name A string that specifies the name of the persistent data item (set with element.setPersistentData()).
	 * @param	format A string that specifies the publishing format. If _EMBED_SWF_ is set, the persistent data will be embedded in the SWF file every time a document is published.
	 * @return True if the specified persistent data is enabled for the specified format. Otherwise False 
	 */
	@:jsflVersion({ added: CC })
	public function getPublishPersistentData(name:String, format:String):Bool;

	/**
	 * Gets the value of the specified element’s transformation point.
	 * @return A point (for example, {x:10, y:20}, where x and y are floating-point numbers) that specifies the position of the transformation point (also origin point or zero point) within the element’s coordinate system.
	 */
	public function getTransformationPoint(): JSFLPoint;
	
	/**
	 * Determines whether the specified data has been attached to the specified element.
	 * @param	name A string that specifies the name of the data item to test.
	 * @return A Boolean value: true if the specified data is attached to the object; false otherwise.
	 */
	public function hasPersistentData(name: String): Bool;
	
	/**
	 * Removes any persistent data with the specified name that has been attached to the object.
	 * @param	name A string that specifies the name of the data to remove.
	 * @return A Boolean value: true if data was removed; false otherwise.
	 */
	public function removePersistentData(name: String): Bool;
	
	/**
	 * Stores data with an element.
	 * @param	name A string that specifies the name to associate with the data. This name is used to retrieve the data.
	 * @param	type A string that defines the type of the data. The allowable values are "integer", "integerArray", "double", "doubleArray", "string", and "byteArray" 
	 * @param	value Specifies the value to associate with the object. The data type of value depends on the value of the type parameter. The specified value should be appropriate to the data type specified by the type parameter.
	 */
	public function setPersistentData(name:String, type:PersistentDataType, value:Dynamic):Void;

	/**
	 * Enables or disables publishing of persistent data for a specified format.
	 * @param	name A string that specifies the name of the persistent data item (set with element.setPersistentData()).
	 * @param	format A string that specifies the publishing format. If _EMBED_SWF_ is set, the persistent data will be embedded in the SWF file every time a document is published.
	 * @param	publish A boolean that indicates whether to enable or disable publishing of persistent data for the specified format.
	 */
	@:jsflVersion({ added: CC })
	public function setPublishPersistentData(name:String, format:String, publish:Bool):Void;

	/**
	 * Sets the position of the element’s transformation point.
	 * @param	transformationPoint A point (for example, {x:10, y:20}, where x and y are floating-point numbers) that specifies values for an element’s or group’s transformation point.
		• Shapes: transformationPoint is set relative to the document (0,0 is the upper-left corner of the Stage).
		• Symbols: transformationPoint is set relative to the symbol’s registration point (0,0 is located at the registration point).
		• Text: transformationPoint is set relative to the text field (0,0 is the upper-left corner of the text field).
		• Bitmaps/videos: transformationPoint is set relative to the bitmap/video (0,0 is the upper-left corner of the bitmap or video).
		• Drawing objects, primitive objects, and groups: transformationPoint is set relative to the stage.
	 */
	public function setTransformationPoint(transformationPoint:JSFLPoint):Void;	
	
	/**
	 * Read-only; an integer that has a value greater than 0 for the depth of the object in the view.
	 */
	public var depth(default, null):Int;
	
	/**
	 * Read-only; a string that represents the type of the specified element.
	 */
	public var elementType(default, null):ElementType;
	
	/**
	 * A float value that specifies the height of the element in pixels.
	 */
	public var height(default, default):Float;
	
	/**
	 * Read-only; represents the Layer object on which the element is located.
	 */
	public var layer(default, null):Layer;
	
	/**
	 * Read-only; a float value that represents the left side of the element.
	 */
	public var left(default, null):Float;
	
	/**
	 * A Boolean value: true if the element is locked; false otherwise.
	 */
	public var locked(default, default):Bool;
	
	/**
	 * A Matrix object. The matrix has properties a, b, c, d, t x, and ty. a, b, c, and d are floating-point values; tx and ty are coordinates.
	 */
	public var matrix(default, default):Matrix;
	
	/**
	 * A string that specifies the name of the element, normally referred to as the Instance name.
	 */
	public var name(default, default):String;
	
	/**
	 * An integer or float value between -180 and 180 that specifies the object’s clockwise rotation, in degrees.
	 */
	public var rotation(default, default):Float;
	
	/**
	 * A float value that specifies the x scale value of symbols, drawing objects, and primitive rectangles and ovals.
	 */
	public var scaleX(default, default):Float;
	
	/**
	 * A float value that specifies the y scale value of symbols, drawing objects, and primitive rectangles and ovals.
	 */
	public var scaleY(default, default):Float;
	
	/**
	 * A Boolean value that specifies whether the element is selected or not.
	 */
	public var selected(default, default):Bool;
	
	/**
	 * A float value between -180 and 180 that specifies the x skew value of symbols, drawing objects, and primitive rectangles and ovals.
	 */
	public var skewX(default, default):Float;
	
	/**
	 * A float value between -180 and 180 that specifies the y skew value of symbols, drawing objects, and primitive rectangles and ovals.
	 */
	public var skewY(default, default):Float;
	
	/**
	 * Read-only; top side of the element.
	 */
	public var top(default, null):Float;
	
	/**
	 * A floating-point number that specifies the x value of the selected elements transformation point, within the coordinate system of the element's parent.
	 */
	public var transformX(default, default):Float;
	
	/**
	 * A floating-point number that specifies the y value of the selected elements transformation point, within the coordinate system of the element's parent.
	 */
	public var transformY(default, default):Float;
	
	/**
	 * A float value that specifies the width of the element in pixels.
	 */
	public var width(default, default):Float;
	
	/**
	 * A float value that specifies the x value of the selected elements registration point.
	 */
	public var x(default, default):Float;
	
	/**
	 * A float value that specifies the y value of the selected elements registration point.
	 */
	public var y(default, default):Float;
	
}
