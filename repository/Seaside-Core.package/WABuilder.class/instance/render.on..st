rendering
render: anObject on: aStream
	"Render anObject and return the contents of the resulting Document as a String.
	anObject must understand #renderOn:. Commonly anObject will be a one-argument
	block, which will be evaluated with the appropriate renderer."
	| context document renderer |
	document := self documentClass on: aStream codec: self codec.
	document scriptGenerator: self scriptGeneratorClass new.
	context := WARenderContext new.
	self rendererClass configureRenderContext: context.
	context document: document.
	context actionUrl: self actionUrl; resourceUrl: self resourceUrl.
	renderer := self rendererClass context: context.
	
	self openDocument: document context: context.
	renderer render: anObject; flush.
	self closeDocument: document