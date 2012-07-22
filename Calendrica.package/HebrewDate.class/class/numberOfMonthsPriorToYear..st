helpers
numberOfMonthsPriorToYear: aYearNumber
	"see table 1.4 of Calendrical Calculations"
	^ AbstractYearMonthDayDate 
		numberOfDaysInPreviousYearsForYear: aYearNumber
		withLeapYearCycleLenght: 19
		ofWhichLeap: 7
		yearZeroPosition: 11
		ordinaryYearLength: 12
		averageLenghtOfYear: 235/19
		timeOfDayYearZeroStarts: 1/19
