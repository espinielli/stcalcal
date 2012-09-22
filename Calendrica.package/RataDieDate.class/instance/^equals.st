comparing
= aDate

	self == aDate ifTrue: [^ true].
	(aDate isKindOf: self class orOf: RataDieDate) ifFalse: [ ^ false].
	^ self moment = aDate moment