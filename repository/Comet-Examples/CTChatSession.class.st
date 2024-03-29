Class {
	#name : 'CTChatSession',
	#superclass : 'WASession',
	#instVars : [
		'username'
	],
	#category : 'Comet-Examples',
	#package : 'Comet-Examples'
}

{ #category : 'accessing' }
CTChatSession >> username [
	^ username
]

{ #category : 'accessing' }
CTChatSession >> username: aString [
	username := aString
]