testing
isLongYear

	| jan1Weekday dec31Weekday |
	jan1Weekday := self newYearDay dayOfWeek.
	dec31Weekday := self endOfYearDay dayOfWeek.
	^ (jan1Weekday = Weekday thursday) or: [dec31Weekday = Weekday thursday]