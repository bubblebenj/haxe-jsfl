package jsfl;

import jsfl.Math;

/**
 * The Tools object is accessible from the flash object (fl.tools).
 * The tools.toolObjs property contains an array of ToolObj objects, and the tools.activeTool
 * property returns the ToolObj object for the currently active tool.
 */
@:native("Tools")
extern class Tools {
	
	/**
	 * Takes two points and returns a new adjusted or constrained point.
	 * @param	pt1 Point that specify the starting-click.
	 * @param	pt2 Point that specify the drag-to point.
	 * @return A new adjusted or constrained point.
	 */
	public function constrainPoint(pt1: JSFLPoint, pt2:JSFLPoint): JSFLPoint;
	
	/**
	 * Returns the most recently pressed key.
	 * @return The integer value of the key.
	 */
	public function getKeyDown():Int;
	
	/**
	 * Sets the pointer to a specified appearance.
	 * @param	cursor An integer that defines the pointer appearance, as described in the following list:
		• 0 = Plus cursor (+)
		• 1 = black arrow
		• 2 = white arrow
		• 3 = four-way arrow
		• 4 = two-way horizontal arrow
		• 5 = two-way vertical arrow
		• 6 = X
		• 7 = hand cursor
	 */
	public function setCursor(cursor:Int):Void;

	
	/**
	 * Takes a point as input and returns a new point that may be adjusted or snapped to the nearest geometric object.
	 * @param	pt Specifies the location of the point for which you want to return a snap point.
	 * @return A new point that may be adjusted or snapped to the nearest geometric object.
	 */
	public function snapPoint(pt: JSFLPoint): JSFLPoint;
	
	/**
	 * Read-only; returns the ToolObj object for the currently active tool.
	 */
	public var activeTool(default, null):ToolObj;
	
	/**
	 * Read-only; a Boolean value that identifies if the Alt key is being pressed.
	 */
	public var altIsDown(default, null):Bool;
	
	/**
	 * Read-only; a Boolean value that identifies if the Control key is being pressed.
	 */
	public var ctlIsDown(default, null):Bool;
	
	/**
	 * Read-only; a Boolean value that identifies if the left mouse button is currently pressed.
	 */
	public var mouseIsDown(default, null):Bool;
	
	/**
	 * Read-only; a point that represents the position of the last mouse-down event on the Stage.
	 */
	public var penDownLoc(default, null):JSFLPoint;
	
	/**
	 * Read-only; a point that represents the current location of the mouse.
	 */
	public var penLoc(default, null):JSFLPoint;
	
	/**
	 * Read-only; a Boolean value that identifies if the Shift key is being pressed.
	 */
	public var shiftIsDown(default, null):Bool;
	
	/**
	 * Read-only; an array of ToolObj objects.
	 */
	public var toolObjs(default, null):Array<ToolObj>;
	
}
