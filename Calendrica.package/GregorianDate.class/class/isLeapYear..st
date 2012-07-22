testing
isLeapYear: aGregorianYearNumber
	^((aGregorianYearNumber \\ 4) = 0) and: [ (#(100 200 300) includes: (aGregorianYearNumber \\ 400)) not ]