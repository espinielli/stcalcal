instance creation
fromString: aString

	aString = 'Winter' ifTrue: [ ^ Season winter].
	aString = 'Summer' ifTrue: [ ^ Season summer].
	aString = 'Spring' ifTrue: [ ^ Season spring].
	aString = 'Autumn' ifTrue: [ ^ Season autumn].
	^self error: aString, ' is not a valid season.'
