testing
isLeapYear: aJulianYearNumber
	"Answer whether aYearNumber is leap in the Julian calendar."
	^ (aJulianYearNumber \\ 4) = (aJulianYearNumber > 0 ifTrue:[0] ifFalse:[3])