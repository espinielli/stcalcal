helpers
newYearDayForYear: aYearNumber
	"Answer newyear date for hebrew year aYearNumber."

	^ (self epoch + 
		(self rd: ((self elapsedDaysForYear: aYearNumber) +
				(self yearLengthCorrectionForYear: aYearNumber)))) as: self