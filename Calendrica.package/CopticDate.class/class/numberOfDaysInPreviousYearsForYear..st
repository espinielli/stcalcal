helpers
numberOfDaysInPreviousYearsForYear: aYearNumber

	^ self
		numberOfDaysInPreviousYearsForYear: aYearNumber
		withLeapYearCycleLenght: 4
		ofWhichLeap: 1
		yearZeroPosition: 1
		ordinaryYearLength: 365
		averageLenghtOfYear: 1461 / 4
		timeOfDayYearZeroStarts: 1 / 4