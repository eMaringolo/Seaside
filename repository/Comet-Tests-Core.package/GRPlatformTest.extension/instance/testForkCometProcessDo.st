*comet-tests-core
testForkCometProcessDo
	| semaphore seen |
	semaphore := self platform semaphoreClass new.
	seen := false.
	self platform cometForkProcessDo: [ seen := true. semaphore signal ].
	semaphore wait.
	self assert: seen