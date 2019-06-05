# Day 3

Interest - ML and SwiftUI

## CreateML

App to help training dataset. no coding.

- Image Classification
	- Annotation JSON Format, image, annotations that contains label, and geometry like x-y and w x h
- Image classification process
	- Prepare a bunch of images
	- build the annotation json file
	- Load image and json file into CreateML app
		- Define number of classes
		- Also provide test dataset
		- Skip details of parameter, then hit play and wait
		- Object detection takes more (e.g. 1 hour or so)
		- After building, use the model, and check the test image using "output" tab
		- You can connect camera via CreateML app - this is good to use real device's camera
	- Considerations
		- Balance distribution of sample images per class
		- 30+
		- Have angle, different dim, etc...
- Vision Framework
	- For realtime camera access
	- Other util
- Sound Classifincation
	- Classify in realtime using "record microphone" feature
	- e.g. applause , cowbell, speech
	- will list heuristic with confidence % - able to detect multiple possibilities or mixture
	- when you train, have single sound class file, and put them into label directory. do not mix different classes to train
- Sound Analysis Framework
	- Common sound process operations
		- Channel Mapping (stereo, mono)
		- Sample rate conversion (khz)
		- Buffering for sample chunk
		- You get classification with labels

https://developer.apple.com/videos/play/wwdc2019/406/

Side notes: how about building app using Sherlock Holms dancing dolls, realitykit body anchor too?
