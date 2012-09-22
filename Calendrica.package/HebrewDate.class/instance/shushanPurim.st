holidays
shushanPurim

	| afterPurimDate |
	afterPurimDate := self purim nextDay.
	^ afterPurimDate dayOfWeek = Weekday saturday
		ifTrue: [afterPurimDate nextDay]
		ifFalse:[afterPurimDate]