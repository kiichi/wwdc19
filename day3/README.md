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

## RealityKit

- Load ARView, add anchor let's say your stage is 20cm x 20cm
- Load usdz and RealityFile
- Use Entity.clone() to spawn multiple objects. e.g. clone card objects
- Add interaction: hitTest
	- entity returns the closes object
	- entities return all objects intercect when you poking on the screen
	- defined collision shape ... use entity.generateCollsiionShapes - automatically define bound box
- Move things around
	- Animation
		- Transition - Linear, Ease, etc...
		- Asset animation (e.g. walk) ... just like old time MD2!
```
// rotation calc example
entity.transformation.rotation = simd_quadf(angle.pi, axis:[1,0,0]);
```
- Async
	- Entity.loadModelAsync().sink{}
```
- = Entity.loadModelAsync(name: "...")
		.append(Entity......)
		.append()
		.collect
		.sink{model:
		...
	}
```

- Occlusion Material
	- Obclusion Material is like stencil / masking object it's invisible
	- Types
		- Plane - could be visible if you go around 
		- Box - completly include to hide

- RealityKit Component
	- Manage game state

```
struct EnemyComponent : Component, Codable{
	var isDead = false;
	var atk = 5;
	var hp = 100;
}
//add components on entity
entity.components[
```

- Multi-player
	- Automatic scene update
	- Built on mutipeer
	- Easy ownership control : host - clients
	- Host can send update to clients but clients can't, so first, transfer ownership, then udpate as a host. Attach syncronization.ownershipTransferMode = .autoAccept into entity
	- Anything you don't want to transmit? Use Local-Only Entities e.g. user's selection marker


https://developer.apple.com/videos/play/wwdc2019/645/


Sidenote: Let's create connect 4 ?

## SwiftUI Essentials

- State Management
	- @State 
	```
	@State private var mymodel:MyModel
	// read access mymodel.someproperty
	// write access $mymode.someproperty
	```
- Modifier
	- e.g. .font(.title)
- Data Binding
	- automatic binding e.g List
	```
		List(myDataset) { item in ...
	```
	- hold state, and detect when change happen (e.g do animate on select)
	- Repeater in general
	```
		ForEach(items) { item in ...
	```
- Accessibility
	- for voice command to take an action, call .accessibility() and define what to specify the command
- Environment
	- Topdown configuration that you can apply on all Views underneath
- Navigation
	- NavigationButton -  outlet to other view, nest the target view
	- then configure the landing view navigationTitle etc

https://developer.apple.com/videos/play/wwdc2019/216/






