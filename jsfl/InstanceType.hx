package jsfl;

/**
 * A string that represents the type of instance. Possible values are "symbol", "bitmap", "embedded video", "linked video", "video", and "compiled clip" 
 */
@:enum abstract InstanceType(String) {
	var SYMBOL = "symbol";
	var BITMAP = "bitmap";
	var EMBEDDED_VIDEO = "embedded video";
	var LINKED_VIDEO = "linked video";
	var VIDEO = "video";
	var COMPILED_CLIP = "compiled clip";
}
