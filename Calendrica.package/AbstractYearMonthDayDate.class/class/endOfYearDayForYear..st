instance creation
endOfYearDayForYear: aYearNumber
	"Answer end of year date for aYearNumber."
	^ (self newYearDayForYear: aYearNumber + 1) previousDay  