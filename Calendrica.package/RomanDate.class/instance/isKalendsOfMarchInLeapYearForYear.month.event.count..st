private
isKalendsOfMarchInLeapYearForYear: aYearNumber month: aMonthNumber event: aMonthEvent count: daysUntilEvent 
	"are we speaking of Kalends of March of a leap year?"

	^ ([JulianDate isLeapYear: aYearNumber]
		, [aMonthNumber = 3]
		, [aMonthEvent = RomanMonthEvent kalends]
		, [daysUntilEvent >= 6]
		, [daysUntilEvent <= 16]) allTrue