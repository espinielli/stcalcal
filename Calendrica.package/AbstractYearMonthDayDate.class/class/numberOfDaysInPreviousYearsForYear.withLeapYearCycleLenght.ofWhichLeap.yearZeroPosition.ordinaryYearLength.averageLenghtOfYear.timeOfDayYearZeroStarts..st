helpers
numberOfDaysInPreviousYearsForYear: aYearNumber withLeapYearCycleLenght: cycleLength ofWhichLeap: leapYearsPerCycle yearZeroPosition: yearZeroPositionInCycle ordinaryYearLength: ordinaryYearLength averageLenghtOfYear: averageYearLength timeOfDayYearZeroStarts: yearZeroStartTime
	"Number of days in the years before year y.
	Formula 1.73 in Calendrical Calculations, 3rd ed."
	| previousYears |
	previousYears := aYearNumber - 1.
	
	^ ((leapYearsPerCycle * previousYears + ((yearZeroPositionInCycle * leapYearsPerCycle) \\ cycleLength)) // cycleLength) + (ordinaryYearLength * previousYears)