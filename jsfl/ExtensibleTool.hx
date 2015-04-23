package jsfl;
	
import jsfl.Flash;

@:native("")
@:build(jsfl.haxe.Config.build())
class ExtensibleTool {
	
	/**
	 * called when the extensible tool becomes active (that is, when the tool is selected in the Tools panel). Use this function to perform any initialization tasks the tool requires.
	 */
	public function activate(): Void;
	
	/**
	 * called when Flash opens and the extensible tool is loaded into the Tools panel. Use this function to set any information Flash needs to know about the tool.
	 */
	public function configureTool(): Void;
	
	/**
	 * called when the extensible tool becomes inactive (that is, when the active tool changes from this tool to another one). Use this function to perform any cleanup the tool needs.
	 */
	public function deactivate(): Void;
	
	/**
	 *  called when the extensible tool is active and the user presses a key. The script should call
tools.getKeyDown() to determine which key was pressed.
	 */
	public function keyDown(): Void;
	
	/**
	 * called when the extensible tool is active and a key is released.
	 */
	public function keyUp(): Void;
	
	/**
	 * called when the extensible tool is active and the mouse button is double-clicked on the Stage.
	 */
	public function mouseDoubleClick(): Void;
	
	/**
	 * called when the extensible tool is active and the mouse button is pressed while the pointer is over the Stage.
	 * @param	pt called when the extensible tool is active and the mouse button is pressed while the pointer is over the Stage.
	 */
	public function mouseDown(?pt: JSFLPoint): Void;
	
	/**
	 * called whenever the extensible tool is active and the mouse moves over a specified point on the Stage. The mouse button can be down or up.
	 * @param	pt A point that specifies the current location of the mouse. It is passed to the function whenever the mouse moves, which tracks the mouse location. If the Stage is in edit or edit-in-place mode, the point coordinates are relative to the object being edited. Otherwise, the point coordinates are relative to the Stage. This parameter is optional.
	 */
	public function mouseMove(?pt: JSFLPoint): Void;
	
	/**
	 * called whenever the extensible tool is active and the mouse button is released after being pressed on the Stage.
	 */
	public function mouseUp(): Void;
	
	/**
	 * called when the extensible tool is active and the user changes its options in the Property inspector. You can use the tools. activeTool property to query the current values of the options (see  tools.activeTool ). 
	 */
	public function notifySettingsChanged(): Void;
	
	/**
	 * called when the extensible tool is active and the mouse moves, to allow the script to set custom pointers. The script should call  tools.setCursor() to specify the pointer to use. For a list that shows which pointers correspond to which integer values, see  tools.setCursor() 
	 */
	public function setCursor(): Void;
	
}