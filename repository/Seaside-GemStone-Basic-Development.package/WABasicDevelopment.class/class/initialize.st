initialization
initialize
	"self initialize"
	
	| wsDict |
	wsDict := UserGlobals 
		at: #SqueakWorkspace
		ifAbsent: [ UserGlobals at: #SqueakWorkspace put: StringKeyValueDictionary new].
	wsDict at: 'Seaside3.2' put: self workspaceContents.