helpers
month: anIslamicMonthNumber day: aDayNumber inGregorianYear: aGregorianYearNumber 
	"return a list of islamic dates (for month/day) in gregorian year"
	| jan1g y d1 d2 d3 gInterval |
	jan1g := GregorianDate newYearDayForYear: aGregorianYearNumber.
	y := jan1g asIslamicDate year.
	d1 := self year: y month: anIslamicMonthNumber day: aDayNumber.
	d2 := self year: y+1 month: anIslamicMonthNumber day: aDayNumber.
	d3 := self year: y+2 month: anIslamicMonthNumber day: aDayNumber.
	gInterval := DateInterval
		from: (GregorianDate newYearDayForYear: aGregorianYearNumber)
	 	to: (GregorianDate endOfYearDayForYear: aGregorianYearNumber).
	^ {d1. d2. d3} select: [:each | gInterval includes: each]