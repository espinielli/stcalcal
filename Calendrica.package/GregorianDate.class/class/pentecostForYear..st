holidays
pentecostForYear: aYearNumber
	"Answer the (Gregorian) date for Pentecost, 49 days after Easter."
	^ (self easterForYear: aYearNumber) + (Duration days: 49)