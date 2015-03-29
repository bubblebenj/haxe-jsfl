package jsfl;

/**
 * A ToolObj object represents an individual tool in the Tools panel.
 * To access a ToolObj object, use properties of the Tools object: either the tools.toolObjs array or tools.activeTool.
 */
@:native("ToolObj")
extern class ToolObj {

	/**
	 * Enables or disables the specified control in a Property inspector. Used only when creating extensible tools.
	 * @param	control A string that specifies the name of the control to enable or disable. Legal values depend on the Property inspector invoked by this tool; see toolObj.setPI(). See documentation of toolObj.enablePIControl() for acceptable values.
	 * @param	bEnable A Boolean value that determines whether to enable (true) or disable (false) the control.
	 */
	public function enablePIControl(control:String, bEnable:Bool):Void;
	
	/**
	 * Identifies a PNG file to use as a tool icon in the Flash Tools panel.
	 * @param	file A string that specifies the name of the PNG file to use as the icon. The PNG file must be placed in the same folder as the JSFL file.
	 */
	public function setIcon(file:String):Void;
	
	/**
	 * Sets the string that appears in the pop-up menu as the name for the tool.
	 * @param	menuStr A string that specifies the name that appears in the pop-up menu as the name for the tool.
	 */
	public function setMenuString(menuStr:String):Void;
	
	/**
	 * Associates an XML file with the tool.
	 * @param	xmlFile A string that specifies the name of the XML file that has the description of the tool’s options. The XML file
must be placed in the same folder as the JSFL file.
	 */
	public function setOptionsFile(xmlFile:String):Void;
	
	/**
	 * Sets a particular Property inspector to be used when the tool is activated.
	 * @param	pi A string that specifies the Property inspector to invoke for this tool.
	 */
	public function setPI(pi:String):Void;
	
	/**
	 * Assigns a name to the tool for the configuration of the Tools panel.
	 * @param	name A string that specifies the name of the tool.
	 */
	public function setToolName(name:String):Void;
	
	/**
	 * Sets the tooltip that appears when the mouse is held over the tool icon.
	 * @param	toolTip A string that specifies the tooltip to use for the tool.
	 */
	public function setToolTip(toolTip:String):Void;
	
	/**
	 * Shows or hides a control in the Property inspector.
	 * @param	control A string that specifies the name of the control to show or hide. This method is used only when you create extensible tools. Valid values depend on the Property inspector invoked by this tool
	 * @param	bShow A Boolean value that determines whether to show or hide the specified control (true shows the control; false hides the control).
	 */
	public function showPIControl(control:String, bShow:Bool):Void;
	
	/**
	 * Called in the configureTool() method of an extensible tool’s JavaScript file to indicate that the free transform handles should appear when the tool is active.
	 * @param	bShow A Boolean value that determines whether to show or hide the free transform handles for the current tool (true shows the handles; false hides them).
	 */
	public function showTransformHandles(bShow:Bool):Void;
	
	/**
	 * An integer that specifies the depth of the tool in the pop-up menu in the Tools panel.
	 */
	public var depth(default, null):Int;
	
	/**
	 * An integer that specifies the resource ID of the tool.
	 */
	public var iconID(default, null):Int;
	
	/**
	 * Read-only; an integer specifying the position of the tool in the Tools panel.
	 */
	public var position(default, null):Int;

}