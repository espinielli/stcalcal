accessing
lastMonthOfYear

	^ (self isLeapYear: self year)
		ifTrue: [HebrewMonth adarII]
		ifFalse: [HebrewMonth adar]