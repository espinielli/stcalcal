instance creation
fromString: aString
	"Answer an instance of created from a string."

	aString = 'Monday' ifTrue: [^ Weekday monday].
	aString = 'Tuesday' ifTrue: [^ Weekday tuesday].
	aString = 'Wednesday' ifTrue: [^ Weekday wednesday].
	aString = 'Thursday' ifTrue: [^ Weekday thursday].
	aString = 'Friday' ifTrue: [^ Weekday friday].
	aString = 'Saturday' ifTrue: [^ Weekday saturday].
	aString = 'Sunday' ifTrue: [^ Weekday sunday].
	^ self error: aString, ' is not a valid weekday.'