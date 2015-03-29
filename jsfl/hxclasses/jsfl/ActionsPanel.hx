package jsfl;

/**
 * The actionsPanel object, which represents the currently displayed Actions panel, is a property of the flash object (see fl.actionsPanel).
 */
@:native("ActionsPanel")
@:require(jsfl_version >= CS3)
extern class ActionsPanel {
	
	/**
	 * returns the class of the specified variable, which must be defined in the currently displayed Actions panel. In addition, the cursor or selected text in the Actions panel must be positioned after the variable definition.
	 * @param	ASvariableName A string that represents the name of an ActionScript variable.
	 * @return A string that represents the class of which ASvariableName is a member.
	 */
	//@:require(jsfl_version >= CS3 && jsfl_version < CC)
	@:jsflVersion({ added : CS3, removed : CC })
	public function getClassForObject(ASvariableName:String):String;
	
		/**
	 * specifies whether Script Assist mode is enabled.
	 * @return specifies whether Script Assist mode is enabled.
	 */
	@:require(jsfl_version >= CS3 && jsfl_version < CC)
	public function getScriptAssistMode():Bool;

	/**
	 * Returns the text that is currently selected in the Actions panel.
	 * @return A string that contains the text that is currently selected in the Actions panel.
	 */	
	@:require(jsfl_version >= CS3)
	public function getSelectedText():String;
	
	/**
	 * Returns the text in the Actions panel.
	 * @return A string that contains all the text in the Actions panel.
	 */
	@:require(jsfl_version >= CS3)
	public function getText():String;
	
	/**
	 * Specifies whether any text is currently selected in the Actions panel.
	 * @return A Boolean value that specifies whether any text is selected in the Actions panel (true) or not (false).
	 */
	@:require(jsfl_version >= CS3)
	public function hasSelection():Bool;
	
	/**
	 * Replaces the currently selected text with specified text.
	 * @param	replacementText A string that represents text to replace selected text in the Actions panel.
	 * @return A Boolean value of true if the Actions panel is found; false otherwise.
	 */
	@:require(jsfl_version >= CS3)
	public function replaceSelectedText(replacementText:String):Bool;
	
	/**
	 * enables or disables Script Assist mode.
	 * @param	bScriptAssist A Boolean value that specifies whether to enable or disable Script Assist mode.
	 * @return A Boolean value that specifies whether Script Assist mode was enabled or disabled successfully.
	 */
	@:require(jsfl_version >= CS3 && jsfl_version < CC)
	public function setScriptAssistMode(bScriptAssist: Bool): Bool;
	
	/**
	 * Selects a specified set of characters in the Actions panel.
	 * @param	startIndex A zero-based integer that specifies the first character to be selected.
	 * @param	numberOfChars An integer that specifies how many characters to select.
	 * @return A Boolean value that specifies whether the requested characters can be selected (true) or not (false).
	 */
	@:require(jsfl_version >= CS3)
	public function setSelection(startIndex:Int,numberOfChars:Int):Bool;
	
	/**
	 * Clears any text in the Actions panel and then adds specified text.
	 * @param	replacementText A string that represents text to place in the Actions panel.
	 * @return A Boolean value of true if the specified text was placed in the Actions panel; false otherwise.
	 */
	public function setText(replacementText:String):Bool;
	
}