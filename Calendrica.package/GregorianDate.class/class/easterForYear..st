holidays
easterForYear: aYear
	"Return fixed date of Easter in Gregorian year aYear."
	| century shiftedEpact adjustedEpact paschalMoon |
	century := (aYear // 100) + 1.
	shiftedEpact := (14 + (11 * (aYear \\ 19)) - ((century * 3) // 4) + (((8 * century) + 5) // 25)) \\ 30.
	adjustedEpact := ((shiftedEpact = 0) or: [(shiftedEpact = 1) and: [10 < (aYear \\ 19)]])
		ifTrue: [shiftedEpact + 1] ifFalse: [shiftedEpact].
	paschalMoon := (GregorianDate year: aYear month: 4 day: 19) rd - adjustedEpact.
	^ (self rd: paschalMoon) nextWeekday: Weekday sunday