
## What's New in Swift

Swift Evolution
https://apple.github.io/swift-evolution/


- Better performance
   - After Swift 5, uses shared runtime of the OS
   - Reduce the distribution binary size

- Better bridging

- LSP Language Server Protocol - Compiler talks to IDE

e.g.
https://github.com/apple/sourcekit-lsp/tree/master/Editors

- Localization

like old cstring function

Text(localizationKey, comment)

- @propertyMapper

- Embedded Swift DSL 

e.g. HTML DSL
also closures

```
html {
	head {
		title ("...")
	}
	body {
	}
}
```

@HTMLBuilder


## SwiftUI

- Declarative Syntax (e.g. switching views)
- Convenient Preview and Short cut, eg. wrap with List, Extract as Custom View
- Drag and drop "Modifier" from the + button (e.g. Image Fit, etc)
- Multiple Previews 
- @State syntax to hold ui state
- .tapAction
- Very reactive

```
@State var zoomed = false
//...
Image(...).tapAction{ self.zoomed.toggle()} // easy to wrap it with withAnimation {}
```

Readonly - Constant and Property
R/W  - @State Bindable Object, @binding

- About UI Complexity
- UI Complexity adding condition is N! compexity (e.g. 4 events can be coming in 4 x 3 x 2 x 1 different order)
- When complexity surpass the human brain capacity, bug will emerge

- SwiftUI Introduce automatic binding between data and UI State

Tutorial

https://developer.apple.com/tutorials/swiftui/creating-and-combining-views

## Introducing SiriKit Media Intents

Siri Media Intent

- Music, Podcast, Radio
- Skipping confirmation

not much control?

## RealityKit

- RealityKit includes networking component to share the session 
- Reality Composer / Reality File

- Components
   - ARView
      - Gesture
      - Shadow
      - Focus
 - Anchor
  - Stick object on surface - more powerful than Vufolia
  - Plane, Face, Image, etc...
- Scene
- Entity
 - object in space, respond to the gesture for example

Basically, ARView spone scene, and anchor is provided, and you attache entities on it. In Entity, you add components, setup position, and other children

## ARKit3

https://developer.apple.com/documentation/arkit/arscnview

- People Occlusion
 - Using ML to find out the deptho
 - Need to update ARView's config, and change frameSemantics property
- Gesture
 - Enable drag by one line 
- Motion Capture
 - Tracking body
 - Both 2D and 3D
 - It's going to be like another anchor; ARBodyAnchor
- Front and Back Camera
 - e.g. capture the face and project on plane

