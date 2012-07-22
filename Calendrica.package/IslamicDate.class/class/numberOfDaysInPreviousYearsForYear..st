helpers
numberOfDaysInPreviousYearsForYear: aYearNumber

	^ self
		numberOfDaysInPreviousYearsForYear: aYearNumber
		withLeapYearCycleLenght: 30
		ofWhichLeap: 11
		yearZeroPosition: 4
		ordinaryYearLength: 354
		averageLenghtOfYear: 10631 / 30
		timeOfDayYearZeroStarts: 7 / 15