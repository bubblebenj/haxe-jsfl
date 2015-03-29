package jsfl;

/**
 * Instance is a subclass of the Element object.
 */
@:native("Instance")
extern class Instance extends Element {
	
	/**
	 * Read-only; a string that represents the type of instance.
	 */
	public var instanceType(default, null): InstanceType;
	
	/**
	 * Library item used to instantiate this instance.
	 */
	public var libraryItem(default, default): Item;

}