package jsfl;

/**
 * TheComponentInstance object represents a component in a frame
 */
@:native("ComponentInstance")
extern class ComponentInstance extends SymbolInstance {
	
	/**
	 * Read-only; an array of ActionScript 2.0 properties that are accessible from the component Property inspector.
	 */
	public var parameters(default, null):Array<Parameter>;
	
}

