testing
testDayNumber

	self assert: (GregorianDate endOfYearDayForYear: 2004) endOfYearDay dayNumber = 366.
	self assert: (GregorianDate endOfYearDayForYear: 2004) newYearDay dayNumber = 1.
	self assert: spiniellibirthday dayNumber = 30