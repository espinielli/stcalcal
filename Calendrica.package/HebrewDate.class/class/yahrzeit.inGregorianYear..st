personal days
yahrzeit: anHebrewDate inGregorianYear: aYear
	"return a list of hebrew dates for death anniversary, anHebrewDate, in gregorian year, aYear."
	| jan1g y d1 d2 gInterval |
	jan1g := GregorianDate newYearDayForYear: aYear.
	y := jan1g asHebrewDate year.
	d1 := self yahrzeit: anHebrewDate forYear: y.
	d2 := self yahrzeit: anHebrewDate forYear: y+1.
	gInterval := DateInterval
		from: (GregorianDate newYearDayForYear: aYear)
	 	to: (GregorianDate endOfYearDayForYear: aYear).
	^ {d1. d2} select: [:each | gInterval includes: each]