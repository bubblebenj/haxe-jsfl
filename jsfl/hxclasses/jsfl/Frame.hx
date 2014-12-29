package jsfl;

/**
 * The Frame object represents frames in the layer.
 */
@:native("Frame")
extern class Frame {

	/**
	 * Converts the selected motion object to a 2D motion object.
	 */
	@:require(flpro_version >= CS5)
	public function convertMotionObjectTo2D():Void;

	/**
	 * Converts the selected motion object to a 3D motion object.
	 */
	@:require(flpro_version >= CS5)
	public function convertMotionObjectTo3D():Void;
	
	/**
	 * Converts the current frame to Frame-by-Frame Animation
	 * @return Returns boolean. Returns true if the frame contains animation that can be converted to frame by frame animation.
	 */
	@:require(flpro_version >= CC)
	public function convertToFrameByFrameAnimation():Bool;
	
	/**
	 * Returns an array of JavaScript objects, each of which has an x and y property.
	 * @param	property An optional string that specifies the property for which you want to return the custom ease value. Acceptable values are "all", "position", "rotation", "scale", "color", and "filters".
	 * @return Returns an array of JavaScript objects, each of which has an x and y property.
	 */
	@:require(flpro_version >= Flash8)
	public function getCustomEase(?property:String="all"):Array<JSFLPoint>;
	
	/**
	 * Returns the motion XML from the selected motion object.
	 * @return Returns a string of the motion XML from the selected motion object.
	 */
	@:require(flpro_version >= CS5)
	public function getMotionObjectXML():Dynamic;
	
	/**
	 * Gets the sound envelope data of any frame.
	 * @return Returns a Sound object.
	 */
	@:require(flpro_version >= CC)
	public function getSoundEnvelope():Dynamic;
	
	/**
	 * Gets the limits(start, end) for a custom Sound envelope that is applied to the frame sound
	 * @return Returns a structure that contain start and end fields.
	 */
	@:require(flpro_version >= CC)
	public function getSoundEnvelopeLimits():{start:Dynamic, end:Dynamic};
	
	/**
	 * Informs you whether or not the currrent selection has a motion tween.
	 * @return a Boolean value. Lets you know whether the current selection includes a motion path.
	 */
	@:require(flpro_version >= CS5)
	public function hasMotionPath():Bool;
	
	/**
	 * Informs you whether or not the currrent selection is a 3D motion object.
	 * @return a Boolean value. Lets you know whether the current selection is a 3D motion object.
	 */
	@:require(flpro_version >= CS5)
	public function is3DMotionObject():Bool;
	
	/**
	 * Informs you whether the frame contains any elements.
	 * @return a Boolean value.
	 */
	@:require(flpro_version >= CC)
	public function isEmpty():Bool;
	
	/**
	 * Informs you whether or not the currrent selection is a motion object.
	 * @return a Boolean value.
	 */
	@:require(flpro_version >= CS5)
	public function isMotionObject():Bool;
	
	/**
	 * Selects or deselects the motion path of the current motion object.
	 * @return a Boolean value. Selects(true) or deselects(false)
	 */
	@:require(flpro_version >= CS5)
	public function selectMotionPath():Bool;
	
	/**
	 * Specifies a cubic Bézier curve to be used as a custom ease curve.
	 * @param	property A string that specifies the property the ease curve should be used for. Acceptable values are "all", "position", "rotation", "scale", "color", and "filters" 
	 * @param	easeCurve An array of objects that defines the ease curve. Each array element must be a JavaScript object with x and y properties.
	 */
	@:require(flpro_version >= Flash8)
	public function setCustomEase(property: String, easeCurve: Array<JSFLPoint>):Void;
	
	/**
	 * Specifies the duration(the tween span length) of the currently selected motion object.
	 * @param	duration Specifies the number of frames for the tween span of the selected motion object.
	 * @param	stretchExistingKeyframes A boolean value that determines whether the tween span is stretched, or if frames are added, to the end of the last frame.
	 */
	@:require(flpro_version >= CS5)
	public function setMotionObjectDuration(duration:Int, stretchExistingKeyframes:Bool):Void;
	
	/**
	 * Applies the specified motion XML to the selected motion object.
	 * @param	xmlstr A string value that specifies the XML string.
	 * @param	endAtCurrentLocation A boolean value that determines whether the tween starts or ends at the current position.
	 */
	@:require(flpro_version >= CS5)
	public function setMotionObjectXML(xmlstr:String, endAtCurrentLocation:Bool):Void;
	
	/**
	 * Sets the sound envelope data of a frame.
	 * @param	soundEnv A sound envelope.
	 */
	@:require(flpro_version >= CC)
	public function setSoundEnvelope(soundEnv:Array<{mark: Dynamic, leftChannel: Dynamic, rightChannel: Dynamic}>):Void;
	
	/**
	 * Sets the sound envelope limits of any frame with a sound file.
	 * @param	limits A structure that contains start and end fields that signify the limits for a custom sound envelope.
	 */
	@:require(flpro_version >= CC)
	public function setSoundEnvelopeLimits(limits:{start:Dynamic, end:Dynamic}):Void;
	
	/**
	 * A string representing ActionScript code.
	 */
	public var actionScript(default, default):String;
	
	/**
	 * Read-only; an integer that represents the number of frames in a frame sequence.
	 */
	public var duration(default, null):Int;
	
	/**
	 * Read-only; an array of Element objects(see Element object).
	 */
	public var elements(default, null):Array<Element>;
	
	/**
	 * A Boolean value that specifies whether the frame gets its ease information from the custom ease curve.
	 */
	@:require(flpro_version >= Flash8)
	public var hasCustomEase(default, default):Bool;
	
	/**
	 * A string that specifies the type of Frame name.
	 */
	public var labelType(default, default):String;
	
	/**
	 * A Boolean value that specifies whether or not the tweened element rotates the element as it moves along a path to maintain its angle with respect to each point on the path.
	 */
	public var motionTweenOrientToPath(default, default):Bool;
	
	/**
	 * A string that specifies how the tweened element rotates.
	 */
	public var motionTweenRotate(default, default):String;
	
	/**
	 * An integer that specifies the number of times the tweened element rotates between the starting keyframe and the next keyframe.
	 */
	public var motionTweenRotateTimes(default, default):Int;
	
	/**
	 * A Boolean value that specifies whether the tweened element scales to the size of the object in the following keyframe, increasing its size with each frame in the tween(true), or doesn’t scale(false).
	 */
	public var motionTweenScale(default, default):Bool;
	
	/**
	 * A Boolean value that specifies whether the tweened element automatically snaps to the nearest point on the motion guide layer associated with this frame’s layer(true) or not(false).
	 */
	public var motionTweenSnap(default, default):Bool;
	
	/**
	 * A Boolean value that if set to true, synchronizes the animation of the tweened object with the main timeline.
	 */
	public var motionTweenSync(default, default):Bool;
	
	/**
	 * A string that specifies the name of the frame.
	 */
	public var name(default, default):String;
	
	/**
	 * A string that specifies how a shape tween is blended between the shape in the keyframe at the start of the tween and the shape in the following keyframe.
	 */
	public var shapeTweenBlend(default, default):String;
	
	/**
	 * A string that specifies effects for a sound that is attached directly to a frame(frame.soundLibraryItem).
	 */
	public var soundEffect(default, default):String;
	
	/**
	 * A library item(see SoundItem object) used to create a sound.
	 */
	public var soundLibraryItem(default, default):SoundItem;
	
	/**
	 * An integer value that specifies the number of times a sound that is attached directly to a frame(frame.soundLibraryItem) plays.
	 */
	public var soundLoop(default, default):Int;
	
	/**
	 * A string that specifies whether a sound that is attached directly to a frame(frame.soundLibraryItem) should play a specific number of times or loop indefinitely.
	 */
	public var soundLoopMode(default, default):String;
	
	/**
	 * A string that specifies the name of a sound that is attached directly to a frame(frame.soundLibraryItem), as stored in the library.
	 */
	public var soundName(default, default):String;
	
	/**
	 * A string that specifies the sync behavior of a sound that is attached directly to a frame(frame.soundLibraryItem).
	 */
	public var soundSync(default, default):String;
	
	/**
	 * Read-only; the index of the first frame in a sequence.
	 */
	public var startFrame(default, null):Int;
	
	/**
	 * An integer that specifies the amount of easing that should be applied to the tweened object.
	 */
	public var tweenEasing(default, default):Int;
	
	/**
	 * Assigns an instance name to the specified motion object.
	 */
	@:require(flpro_version >= CS5)
	public var tweenInstanceName(default, default):String;
	
	/**
	 * A string that specifies the type of tween.
	 */
	public var tweenType(default, default):TweenType;
	
	/**
	 * A Boolean value that specifies whether a single custom ease curve is used for easing information for all properties.
	 */
	@:require(flpro_version >= Flash8)
	public var useSingleEaseCurve(default, default):Bool;
	
}