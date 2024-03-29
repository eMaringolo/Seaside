Class {
	#name : 'WACmdClearSessions',
	#superclass : 'OBCommand',
	#category : 'Seaside-Tools-OmniBrowser-Commands',
	#package : 'Seaside-Tools-OmniBrowser',
	#tag : 'Commands'
}

{ #category : 'execution' }
WACmdClearSessions >> execute [
	WAAdmin clearSessions
]

{ #category : 'testing' }
WACmdClearSessions >> group [
	^ #manager
]

{ #category : 'testing' }
WACmdClearSessions >> isActive [
	^ requestor isSelected: target
]

{ #category : 'accessing' }
WACmdClearSessions >> label [
	^ 'Clear sessions'
]