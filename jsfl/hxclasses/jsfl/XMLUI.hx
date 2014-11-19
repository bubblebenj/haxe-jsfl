package jsfl;

/**
 * Flash 8 supports custom dialog boxes written in a subset of the XML User Interface Language (XUL).
 * An XML User Interface (XMLUI) dialog box can be used by several Flash features, such as commands and behaviors, to provide a user interface for
 * features that you build using extensibility.
 * The XMLUI object provides the ability to get and set properties of an XMLUI dialog box, and accept or cancel out of one.
 * The XMLUI methods can be used in callbacks, such as oncommand handlers in buttons.
 * 
 * You can write a dialog.xml file and invoke it from the JavaScript API using the document.xmlPanel() method.
 * To retrieve an object representing the current XMLUI dialog box, use fl.xmlui.
 */
@:native("XMLUI")
extern class XMLUI {

	/**
	 * Closes the current XMLUI dialog box with an accept state.
	 */
	public function accept():Void;
	
	/**
	 * Closes the current XMLUI dialog box with a cancel state.
	 */
	public function cancel():Void;
	
	/**
	 * Retrieves the value of the specified property of the current XMLUI dialog box.
	 * @param	controlPropertyName A string that specifies the name of the XMLUI property whose value you want to retrieve.
	 * @return A string that represents the value of the specified property. In cases where you might expect a Boolean value of true or false, it returns the string "true" or "false" 
	 */
	public function get(controlPropertyName:String):Bool;
	
	/**
	 * Returns the current control item for the specified control.
	 * @param	controlPropertyName A string that specifies the property whose control item element you want to retrieve.
	 * @return An object that represents the current control item for the control specified by controlPropertyName.
	 */
	public function getControlItemElement(controlPropertyName:String):Dynamic;
	
	/**
	 * Returns a Boolean value that specifies whether the control is enabled or disabled (dimmed).
	 * @param	controlID A string that specifies the ID attribute of the control whose status you want to retrieve.
	 * @return A Boolean value of true if the control is enabled; false otherwise.
	 */
	public function getEnabled(controlID:String):Bool;
	
	/**
	 * Returns a Boolean value that specifies whether the control is visible or hidden.
	 * @param	controlID A string that specifies the ID attribute of the control whose visibility status you want to retrieve.
	 * @return A Boolean value of true if the control is visible, or false if it is invisible (hidden).
	 */
	public function getVisible(controlID:String):Bool;
	
	/**
	 * Modifies the value of the specified property of the current XMLUI dialog box.
	 * @param	controlPropertyName A string that specifies the name of XMLUI property to modify.
	 * @param	value A string that specifies the value to which you want to set the XMLUI property.
	 */
	public function set(controlPropertyName:String, value:String):Void;
	
	/**
	 * Sets the label and value for the current item. 
	 * @param	controlPropertyName A string that specifies the control item element to set.
	 * @param	elementItem A JavaScript object with a string property named label and an optional string property named value.
	 * If the value property does not exist, then it is created and assigned the same value as label 
	 */
	 public function setControlItemElement(controlPropertyName:String, elementItem:{label:String, ?value:String}):Void;
	
	/**
	 * Sets the label, value pairs of the current item.
	 * @param	controlID A string that specifies the ID attribute of the control you want to set.
	 * @param	elementItemArray An array of JavaScript objects, where each object has a string property named label and an optional string property named value.
	 * If the value property does not exist, then it is created and assigned the same value as label.
	 */
	public function setControlItemElements(controlID:String, elementItemArray:Array<{label:String, ?value:String}>):Void;
	
	/**
	 * Enables or disables (dims) a control.
	 * @param	controlID A string that specifies the ID attribute of the control you want to enable or disable.
	 * @param	enable A Boolean value of true if you want to enable the control, or false if you want to disable (dim) it.
	 */
	public function setEnabled(controlID:String, enable:Bool):Void;
	
	/**
	 * Shows or hides a control.
	 * @param	controlID A string that specifies the ID attribute of the control you want to show or hide.
	 * @param	visible A Boolean value of true if you want to show the control; false if you want to hide it.
	 */
	public function setVisible(controlID:String, visible:Bool):Void;

}
