testing
testElapsedDays

	self assert: (HebrewDate elapsedDaysForYear: 1234) = (HebrewDate alternativeElapsedDaysForYear: 1234).  