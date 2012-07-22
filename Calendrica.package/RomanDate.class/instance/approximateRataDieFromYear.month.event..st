private
approximateRataDieFromYear: aYearNumber month: aMonthNumber event: aMonthEvent
	"approximate R.D. of a Roman date, not taking leap year/day."
	aMonthEvent = RomanMonthEvent kalends
		ifTrue: [ ^ (JulianDate
						year: aYearNumber
						month: aMonthNumber
						day: 1) rd].

	aMonthEvent = RomanMonthEvent nones
		ifTrue:[ ^ (JulianDate
						year: aYearNumber
						month: aMonthNumber
						day: (self class nonesOfMonth: aMonthNumber)) rd].

	aMonthEvent = RomanMonthEvent ides
		ifTrue:[ ^ (JulianDate
						year: aYearNumber
						month: aMonthNumber
						day: (self class idesOfMonth: aMonthNumber)) rd]