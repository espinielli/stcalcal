helpers
month: aMonthNumber day: aDayNumber inGregorianYear: aGregorianYearNumber 
	"return a list of coptic dates (for month/day) in gregorian year"
	| jan1g y d1 d2 gInterval |
	jan1g := GregorianDate newYearDayForYear: aGregorianYearNumber.
	y := jan1g asCopticDate year.
	d1 := self year: y month: aMonthNumber day: aDayNumber.
	d2 := self year: y+1 month: aMonthNumber day: aDayNumber.
	gInterval := DateInterval
		from: (GregorianDate newYearDayForYear: aGregorianYearNumber)
	 	to: (GregorianDate endOfYearDayForYear: aGregorianYearNumber).
	^ {d1. d2} select: [:each | gInterval includes: each]