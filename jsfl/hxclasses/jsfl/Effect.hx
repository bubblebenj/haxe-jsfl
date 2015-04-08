package jsfl;

@:require(jsfl_version >= CS4 && jsfl_version < CC)
typedef Effect = {
	public var effectName:String;
	public var groupName:String;
	public var sourceFile:String;
	public var symbolType:String;
	public var useXMLToUI:Bool;
}
