holidays
orthodoxEasterForYear: aYear
	"Return fixed date of Orthodox Easter in Gregorian year aYear."
	| shiftedEpact jYear paschalMoon |
	shiftedEpact := (14 + (11 * (aYear \\ 19)))  \\ 30.
	jYear := aYear > 0 ifTrue: aYear ifFalse: aYear - 1.
	paschalMoon := (JulianDate year: jYear month: 4 day: 19) rd - shiftedEpact.
	^ (self rd: paschalMoon) nextWeekday: Weekday sunday