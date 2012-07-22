accessing
year

	| approxYear nextNewYearDate |
	approxYear := (self previousNthDay: 3) asGregorianDate year.
	nextNewYearDate := self class newYearDayForYear: approxYear + 1.
	^ self >= nextNewYearDate
		ifTrue: [approxYear + 1]
		ifFalse: [approxYear]