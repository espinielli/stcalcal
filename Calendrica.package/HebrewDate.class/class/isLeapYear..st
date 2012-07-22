testing
isLeapYear: anHebrewYearNumber
	"leap years occur in years 3, 6, 8, 11, 14, 17 and 19 of the 19-year Metonic cycle."
	^ ((7 * anHebrewYearNumber + 1) \\ 19) < 7  