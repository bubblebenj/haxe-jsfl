package jsfl;

/**
 * The actionsPanel object, which represents the currently displayed Actions panel, is a property of the flash object (see fl.actionsPanel).
 */
@:native("ActionsPanel")
extern class ActionsPanel {

	/**
	 * Returns the text that is currently selected in the Actions panel.
	 * @return A string that contains the text that is currently selected in the Actions panel.
	 */
	public function getSelectedText():String;
	
	/**
	 * Returns the text in the Actions panel.
	 * @return A string that contains all the text in the Actions panel.
	 */
	public function getText():String;
	
	/**
	 * Specifies whether any text is currently selected in the Actions panel.
	 * @return A Boolean value that specifies whether any text is selected in the Actions panel (true) or not (false).
	 */
	public function hasSelection():Bool;
	
	/**
	 * Replaces the currently selected text with specified text.
	 * @param	replacementText A string that represents text to replace selected text in the Actions panel.
	 * @return A Boolean value of true if the Actions panel is found; false otherwise.
	 */
	public function replaceSelectedText(replacementText:String):Bool;
	
	/**
	 * Selects a specified set of characters in the Actions panel.
	 * @param	startIndex A zero-based integer that specifies the first character to be selected.
	 * @param	numberOfChars An integer that specifies how many characters to select.
	 * @return A Boolean value that specifies whether the requested characters can be selected (true) or not (false).
	 */
	public function setSelection(startIndex:Int, numberOfChars:Int):Bool;
	
	/**
	 * Clears any text in the Actions panel and then adds specified text.
	 * @param	replacementText A string that represents text to place in the Actions panel.
	 * @return A Boolean value of true if the specified text was placed in the Actions panel; false otherwise.
	 */
	public function setText(replacementText:String):Bool;
}
