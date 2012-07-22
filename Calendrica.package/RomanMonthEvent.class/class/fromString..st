instance creation
fromString: aString

	aString = 'Kalends' ifTrue: [ ^ self kalends].
	aString = 'Nones' ifTrue: [ ^ self nones].
	aString = 'Ides' ifTrue: [ ^ self ides].
	^self error: aString, ' is not a valid Roman month event.'
