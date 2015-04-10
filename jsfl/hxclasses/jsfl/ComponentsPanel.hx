package jsfl;
	
import jsfl.Math;
	
/**
 * The componentsPanel object, which represents the Components panel, is a property of the
 * flash object (fl) and can be accessed by fl.componentsPanel (see flash object (fl)).
 */
@:native("ComponentsPanel")
@:build(jsfl.haxe.Config.build())
extern class ComponentsPanel {
	
	/**
	 * Adds the specified component to the document at the specified position.
	 * @param	position A point that specifies the location at which to add the component. Specify position relative to the center point of the component.
	 * @param	category Name Specifies the name of the component category. The valid category names are listed in the Components panel.
	 * @param	componentName Specifies the name of the component in the specified category. The valid component names are listed in the Components panel.
	 */
	public function addItemToDocument(position: JSFLPoint, categoryName:String, componentName:String):Void;
	
	/**
	 * Refreshes the Components panel's list of components
	 * @return A Boolean value of true if the Component panel list is refreshed, false otherwise.
	 */
	@:jsflVersion({ added: FlashPro8 })
	public function reload():Bool;
	
}
