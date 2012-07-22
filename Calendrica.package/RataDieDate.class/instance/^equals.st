comparing
= aDate

	self == aDate ifTrue: [^ true].
	(aDate isKindOf: self class) ifFalse: [ ^ false].
	^ self moment = aDate moment