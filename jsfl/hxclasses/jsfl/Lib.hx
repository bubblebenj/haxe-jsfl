package jsfl;

class Lib {
	
	/**
	 * Displays a string in a modal Alert dialog box, along with an OK button.
	 * @param	alertText A string that specifies the message you want to display in the Alert dialog box.
	 */
	public static function alert(alertText:String):Void {
		untyped __js__("alert")(alertText);
	}
	
	/**
	 * Displays a string in a modal Alert dialog box, along with OK and Cancel buttons.
	 * @param	strAlert A string that specifies the message you want to display in the Alert dialog box.
	 * @return A Boolean value:  true if the user clicks OK;  false if the user clicks Cancel.
	 */
	public static function confirm(strAlert:String):Bool {
		return untyped __js__("confirm")(strAlert);
	}
	
	/**
	 * displays a prompt and optional text in a modal Alert dialog box, along with OK and Cancel buttons.
	 * @param	promptMsg A string to display in the Prompt dialog box (limited to 256 characters in Mac OS X).
	 * @param	text An optional string to display as a default value for the text field.
	 * @return The string the user typed if the user clicks OK;  null if the user clicks Cancel.
	 */
	public static function prompt(promptMsg:String, ?text:String = ""):String {
		return untyped __js__("prompt")(promptMsg, text);
	}
	
	/**
	 * 
	 * @param	object
	 * @param	posInfos
	 */
	public static function throwError(object:Dynamic, ?posInfos:haxe.PosInfos):Void {
		fl.trace('Error : ${object} at ${posInfos.methodName}[${posInfos.fileName}:${posInfos.lineNumber}]');
		throw object;
	}
	
	public static var fl:Flash = untyped __js__("fl");
}
