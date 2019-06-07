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

## Multi-player AR Experience

- Ad-hoc / P2P network model. No centralized host, any guest can join at any timing
- Collaborative Session Process
	- Setup Network (automatic)
	- Session Starts, and passing around data (here is customizable area)
	- Localize other user's map (automatic)
	- ARAnchor v.s. ARParticipantAnchor 
- Use Component Protocol
```
struct GameStateComponent: Component, Codable {
	....
}
//... then register this component
```
- Physics is automatically shared via RealityKit
- Key - ARAnchors, and all related entities; such as, paddle, player and they sync throughout the same session 

## Natural Language Processing

https://developer.apple.com/documentation/naturallanguage

- Using NN Underneath
- Sentiment Analysis 
```
import NatualLanguage
```
- Word Tagging : Classification like "Person", "Location", "Noun" 
- In order to overwrite existing tagging system, Train the model / gazetteer using CreateML with Text Catalog
- NLGazetteer - model from the text catalog
- Word Embedding - like Word2Vec
	- Get cluster
	- Get distance
- Small size!
- Dynamic Embedding
	- Transfer embedding from other. 
	- A word meaning could be changed based on the context before / after
	- Only available in English
- Demo: Combination of text classification and word embedding

## Text Recognition in Vision Framework

- VNRecognizeTextRequest - easy like Tesseract
- Fast v.s. Accurate - Accurate way uses NN, and use it either realtime scan or not
	- Fast - e.g. like serial numbers, MRN, phone, etc just like barcode way 
		- you can map and filter to reduce the noise
- Language based correction 
- Document - identify document type
	- Business card scan demo
	- Identify type of document

## MapKit and MapKit JS

- Darkmode
- Maps Web Snapshots - url based service snapshot.apple-mapkit.com/api/v1/snapshot?center=...
- MKSnapshotter
- MKPointOfInterestFilter - e.g. school, restaurant, etc...
- MKMultiPolygonRenderer - Faster!
- GeoJSON Support - yey!
	- MKGeoJSONFeature via MKGeoJSONDecoder
- Indoor Mapping Data Format
	- GeoJSON based indoor map



