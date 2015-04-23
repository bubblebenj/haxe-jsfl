package jsfl;

@:jsflVersion({ added: CS4, removed: CC })
typedef Effect = {
	public var effectName:String;
	public var groupName:String;
	public var sourceFile:String;
	public var symbolType:String;
	public var useXMLToUI:Bool;
}
