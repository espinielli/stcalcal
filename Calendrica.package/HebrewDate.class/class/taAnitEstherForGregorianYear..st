holidays
taAnitEstherForGregorianYear: aYear

	| purimDate |
	purimDate := self purimForGregorianYear: aYear.
	^ purimDate dayOfWeek = Weekday sunday
		ifTrue: [purimDate previousNthDay: 3] "i.e. Thursday"
		ifFalse:[purimDate previousDay]