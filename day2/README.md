
## What's New in Swift

Swift Evolution
https://apple.github.io/swift-evolution/


- Better performance
-- After Swift 5, uses shared runtime of the OS
-- Reduce the distribution binary size

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



