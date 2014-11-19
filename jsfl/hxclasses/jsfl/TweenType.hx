package jsfl;

/**
 * a string that specifies the type of tween; acceptable values are "motion", "shape", or "none".
 * 
 * The value "none" removes the motion tween.
 * Use the timeline.createMotionTween() method to create a motion tween.
 * 
 * If you specify "motion", the object in the frame must be a symbol, text field, or grouped object.
 * It will be tweened from its location in the current keyframe to the location in the following keyframe.
 * 
 * If you specify "shape", the object in the frame must be a shape.
 * It will blend from its shape in the current keyframe to the shape in the following keyframe.
 */
@:enum abstract TweenType(String) {
	var MOTION = "motion";
	var SHAPE = "shape";
	var NONE = "none";
	var MOTION_OBJECT = "motion object";
}

