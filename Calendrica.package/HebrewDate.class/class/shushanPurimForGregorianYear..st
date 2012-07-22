holidays
shushanPurimForGregorianYear: aYear

	| afterPurimDate |
	afterPurimDate := (self purimForGregorianYear: aYear) nextDay.
	^ afterPurimDate dayOfWeek = Weekday saturday
		ifTrue: [afterPurimDate nextDay]
		ifFalse:[afterPurimDate]