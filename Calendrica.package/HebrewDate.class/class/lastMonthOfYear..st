helpers
lastMonthOfYear: anHebrewYearNumber

	^ (self isLeapYear: anHebrewYearNumber)
		ifTrue: [HebrewMonth adarII]
		ifFalse: [HebrewMonth adar]