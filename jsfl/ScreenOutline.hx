package jsfl;

/**
 * The ScreenOutline object represents the group of screens in a slide or form document.
 * The object is accessed by using fl.getDocumentDOM().screenOutline.
 * 
 * The ScreenOutline object exists only if the document is a slide or form document,
 * so before accessing the property, use document.allowScreens() to verify that a Screens document exists.
 */
@:native("ScreenOutline")
@:build(jsfl.haxe.Config.build())
@:jsflVersion({ removed: CS5 })
extern class ScreenOutline {
	
	/**
	 * Inserts all the screens, or a named screen and its children, from a specified document under the currently selected screen. If more than one screen is selected, the screen(s) are inserted under the last selected screen, as its sibling.
	 * @param	fileURI A string, expressed as a file:/// URI, that specifies a filename for the authoring file that contains the screens to copy into the document.
	 * @param	screenName The name of the screen to copy. If the screenName parameter is present, Flash copies that screen and its children. If the screenName is not specified, Flash copies the whole document.
	 */
	public function copyScreenFromFile(fileURI: String, ?screenName: String): Void;
	
	/**
	 * Deletes the currently selected screen(s), or a specified screen, and the children of the screen(s).
	 * @param	screenName A string value that specifies the screen name to duplicate. If you don’t pass a value for screenName, the currently selected screen(s) are duplicated.
	 */
	public function deleteScreen(screenName: String): Void;
	
	/**
	 *  duplicates the currently selected screen(s) or a specified screen.  If you duplicate multiple screens, the duplicates are placed directly below the selected screen that is lowest in the screen outline hierarchy.
	 * @param	screenName A string value that specifies the screen name to duplicate. If you don’t pass a value for screenName, the currently selected screen(s) are duplicated. The duplicate screens are given a default name by appending  _copy to the original name, such as Screen_copy, Screen_copy2, and so on.
	 * @return A Boolean value:  true if the screen is successfully duplicated;  false otherwise.
	 */
	public function duplicateScreen(?screenName: String): Bool;
	
	/**
	 * Returns an array of Screen objects that are currently selected in the screen outline.
	 * @return An array of selected Screen objects (see Screen object).
	 */
	public function getSelectedScreens(): Array<Screen>;
	
	/**
	 * Inserts a nested screen of a specific type into a particular location in the screen outline.
	 * @param	name A string indicating the name of the new screen to insert. An empty name will insert a screen with a default screen name, such as Slide n or Form n (where n is the first available unique number).
	 * @param	referenceScreen A string indicating the name of the screen into which the new screen is inserted as a child. If this parameter is omitted, the new screen is inserted as a child of the currently selected screen.
	 * @param	screenTypeName A string that specifies the screen type to attach to the new nested screen. The screen type and class name are set for this screen. Acceptable values are  "Form" and  "Slide" . If this parameter is omitted, the type is inherited from the parent screen.
	 * @return A Screen object.
	 */
	public function insertNestedScreen(?name: String, ?referenceScreen: String, ?screenTypeName: String): Screen;
	
	/**
	 * Inserts a new blank screen of a specified type into the document at a specified location.
	 * @param	name A string indicating the name of the new screen to insert. If this parameter is omitted, the method inserts a screen with a default screen name, such as Slide n or Form n (where n is the first available unique number).
	 * @param	referenceScreen A string indicating the name of the screen before the new screen. If this parameter is omitted, the new screen is inserted after the currently selected screen. If the referenceScreen parameter identifies a child screen, the new screen will be a peer of the child screen, and a child screen of the same parent.
	 * @param	screenTypeName A string that specifies the screen type to attach to the new screen. The screen type and class name are set for this screen. Acceptable values are  "Form" and  "Slide".
	 * @return A Screen object.
	 */
	public function insertScreen(?name: String, ?referenceScreen: String, ?screenTypeName: String): Screen;
	
	/**
	 * Moves the specified screen in relation to the value of the referenceScreen parameter; either before, after, as the first child, or as the last child.
	 * @param	screenToMove A string that is the screen name to move.
	 * @param	referenceScreen A string that specifies the screen near which screenToMove will be placed.
	 * @param	position A string that specifies where to move the screen in relation to referenceScreen. Acceptable values are "before", "after", "firstChild", and  "lastChild"
	 * @return A Boolean value:  true if the move is successful;  false  otherwise.
	 */
	public function moveScreen(screenToMove: String, referenceScreen: String, position: String): Bool;
	
	/**
	 * Changes the screen with a specified name to a new name.
	 * @param	newScreenName A string that specifies the new name of the screen.
	 * @param	oldScreenName A string that specifies the name of the existing screen to change. If not specified, the name of the currently selected screen changes.
	 * @param	bDisplayError A Boolean value that, if set to  true , shows an error message if an error occurs—for example, if a screen with the same name as the value passed to newScreenName already exists.
	 * @return A Boolean value:  true if the renaming is successful;  false  otherwise.
	 */
	public function renameScreen(newScreenName: String, ?oldScreenName: String, ?bDisplayError: Bool=false): Bool;
	
	/**
	 * Sets the current selection in the screen outline to the specified screen.
	 * @param	name A string that specifies the name of the screen that should become the currently selected screen. If the screen is a child of another screen, you do not need to indicate a path or hierarchy.
	 */
	public function setCurrentScreen(name: String): Void;
	
	/**
	 * Sets the specified property with the specified value for the selected screens.
	 * @param	property A string that specifies the property to set.
	 * @param	value The new value for the property. The type of value depends on the property being set. Available properties are screenOutline.currentScreen,  screenOutline.rootScreen, and screenOutline.screens.
	 */
	public function setScreenProperty(property: String, value: Dynamic): Void;
	
	/**
	 * Selects the specified screens in the Screen Outline pane. If multiple screens are specified, the screen with the last index value of the selection array is focused on the Stage.
	 * @param	selection An array of screen names to be selected in the screen outline.
	 * @param	bReplaceCurrentSelection A Boolean value that, if true, lets you deselect the current selection. If false, Flash extends the current selection to include the specified screens.
	 */
	public function setSelectedScreens(selection: Array<String>, ?bReplaceCurrentSelection: Bool=true): Void;
	
	/**
	 * A Screen object; the currently selected screen.
	 */
	public var currentScreen(default, default): Screen;
	
	/**
	 * Read-only; the first screen in the screen outline.
	 */
	public var rootScreen(default, null): Screen;
	
	/**
	 * Read-only; the array of top-level Screen objects contained in the document (see Screen object).
	 */
	public var screens(default, null): Array<Screen>;
	
}
