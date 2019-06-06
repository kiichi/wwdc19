# Day 4

Interest : SwiftUI Data Binding, CoreML, and RealityKit

## Dataflow in SwiftUI

https://developer.apple.com/videos/play/wwdc2019/226/

## Creating CoreML App

- Object Detection
	- Process in callback handleObservations, and you get observations.count
	- observation object has property of bounds
	- Initially annotation box was entire dice. It got problem when two dices are close each otehr.
	- Re-training model example: bounding box has been re-annotated on the top panel of the dice
- Drawing Recoginition
	- Use MNIST
	- view.allowFingerDrawing ... let the user draw on screen
	- Stroke information passed
	- Identifying overlap area of stroke (e.g. 4 has intersection) , example: 4, you have to wait until 2nd stroke
- Speech Recoginition
	- Speech Framework

## Reality Composer

- Scene
	- Anchor : Horizontal, Vertical, Image, or Face
	- Objects / Entity
	- Animation - Emphasis .. canned animation
	- Behavior - e.g. Show, Hide, Orbit motion, etc... you can also add animation using "Animation Cards" without any code
	- Physics
- Composer
	- Building Scene
		- Ring around object : green, blue, red represent which xyz plane you are trying to move
		- Hold undo to pop redo menu
	- Behavior
		- Triggers - tap, proximity, collision, notification (programmatically triggering event)
		- Group - sequence of actions, loopable
		- Exclusive action sequence - one time
		- Look At action - face to camera
		- To group actions (e.g. running 4 actions in pararell, drag and drop action cards on top of each other)
	- Physics
		- Materials
		- Force
		- Set collide options. Default is off
- Programmability
	- from the scene, you can access actions properties. e.g. filter by naming prefix
	- then implement onAction callback
	- use notification .post() function

