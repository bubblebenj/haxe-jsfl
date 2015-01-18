package jsfl;

/**
 * The Screen object represents a single screen in a slide or form document.
 * This object contains properties related to the slide or form.
 * For access to the array of all Screen objects in the document, use the following code:
 * 	fl.getDocumentDOM().screenOutline.screens
 */
@:native("Screen")
@:require(jsfl_version < CS5)
extern class Screen {
	
	/**
	 * A string that is equivalent to the Name field in the Accessibility panel.
	 */
	public var accName(default, default):String;
	
	/**
	 * Read-only; the array of child screens for this screen. The array is empty if there are no child screens.
	 */
	public var childScreens(default, null):Array<Screen>;
	
	/**
	 * A string that is equivalent to the Description field in the Accessibility panel.
	 */
	public var description(default, default):String;
	
	/**
	 * A Boolean value that enables and disables accessibility for the object’s children.
	 */
	public var forceSimple(default, default):Bool;
	
	/**
	 * A Boolean value that specifies whether a screen is visible.
	 */
	public var hidden(default, default):Bool;
	
	/**
	 * Read-only; a string that represents the instance name used to access the object from ActionScript.
	 */
	public var instanceName(default, null):String;
	
	/**
	 * Read-only; a string that represents the name of the screen.
	 */
	public var name(default, null):String;
	
	/**
	 * Read-only; an object that represents the next peer screen in the parent’s childScreens array.
	 */
	public var nextScreen(default, null):Screen;
	
	/**
	 * Read-only; an array of ActionScript 2.0 properties that are accessible from the screen Property inspector.
	 */
	public var parameters(default, null):Array<Parameter>;
	
	/**
	 * Read-only; an object that represents the parent screen.
	 */
	public var parentScreen(default, null):Screen;
	
	/**
	 * Read-only; an object that represents the previous peer screen in the parent’s childScreens array.
	 */
	public var prevScreen(default, null):Screen;
	
	/**
	 * A Boolean value that specifies whether the object is accessible.
	 */
	public var silent(default, default):Bool;
	
	/**
	 * Equivalent to the Tab Index field in the Accessibility panel.
	 */
	public var tabIndex(default, default):Int;
	
	/**
	 * Read-only; the Timeline object for the screen. See Timeline object.
	 */
	public var timeline(default, null):Timeline;
	
}
