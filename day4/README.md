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
