testing
testEndOfYearDay

	self assert: (GregorianDate endOfYearDayForYear: 2004) endOfYearDay = (GregorianDate year: 2004 month: 12 day: 31).
	self assert: (GregorianDate endOfYearDayForYear: 2004) endOfYearDay = (GregorianDate year: 2004 month: GregorianMonth december day: 31).