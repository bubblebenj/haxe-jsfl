package jsfl;

/**
 * The swfPanel object represents a Window SWF panel.
 * Window SWF panels are SWF files that implement applications you can run from the Flash authoring environment; they are available from the Window > Other Panels menu.
 * By default, Window SWF panels are stored in a subfolder of the Configuration folder (see “Saving JSFL files” on page 2).
 * For example, on Windows XP, the folder is in boot drive\Documents and Settings\user\Local Settings\Application Data\Adobe\Flash CS4\language\Configuration\WindowSWF.
 * A sample Window SWF panel is available; see “Sample Trace Bitmap panel” on page 17.
 * The array of registered Window SWF panels is stored in the fl.swfPanels property.
 */
@:native("SwfPanel")
@:require(flpro_version >= CS4)
extern class SwfPanel {
	
	/**
	 * Works in conjunction with the ActionScript ExternalInterface.addCallback() and MMExecute() methods to communicate with the SWF panel from the authoring environment.
	 * @param	functionName Name of the function to be called
	 * @param	arg Parameters to pass to the function.
	 * @return Either null or a string that is returned by the function call. The function result could be an empty string.
	 */
	public function call(functionName:String, ?arg:Dynamic):String;
	
	/**
	 * Reloads content in the SWF panel.
	 */
	@:require(flpro_version >= CC)
	public function reload():Void;
	
	/**
	 * Sets the keyboard focus to the specified SWF panel.
	 */
	@:require(flpro_version >= CS5)
	public function setFocus():Void;
	
	/**
	 * A string that contains the DPI scale factor (scaleX) for swfPanel.
	 */
	@:require(flpro_version >= CC)
	public var dpiScaleFactorX(default, default):String;
	
	/**
	 * A string that contains the DPI scale factor (scaleY) for swfPanel.
	 */
	@:require(flpro_version >= CC)
	public var dpiScaleFactorY(default, default):String;
	
	/**
	 * Read-only; a string that represents the name of the specified Window SWF panel.
	 */
	public var name(default, null):String;
	
	/**
	 * Read-only; a string that represents the path to the SWF file used in the specified Window SWF panel.
	 */
	public var path(default, null):String;

}