helpers
moladForMonth: anHebrewMonth year: aYearNumber
	"the moment of the mean conjunction (of new moon) of month, anHebrewMonth, in year, aYearNumber."
	| elapsedMonths  year totalNumberOfPreviousMonths firstMeanConjunction meanMonthDuration |
	year :=  anHebrewMonth < HebrewMonth tishri
		ifTrue: [aYearNumber + 1]
		ifFalse: [aYearNumber].
	totalNumberOfPreviousMonths :=  (((235 * year) - 234) // 19).
	elapsedMonths := anHebrewMonth rd - HebrewMonth tishri rd + totalNumberOfPreviousMonths.
	firstMeanConjunction := (ClockTime hours: 0 minutes: 48 seconds: 40) decimalDays.
	meanMonthDuration := (ClockTime hours: (29*24+12) minutes: 44 seconds: 10/3) decimalDays.
	
	^ self epoch rd - firstMeanConjunction + (elapsedMonths * meanMonthDuration)