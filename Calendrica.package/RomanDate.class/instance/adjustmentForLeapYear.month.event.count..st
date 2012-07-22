private
adjustmentForLeapYear: aYearNumber month: aMonthNumber event: aMonthEvent count: daysUntilEvent

	 ^ (self isKalendsOfMarchInLeapYearForYear: aYearNumber
				month: aMonthNumber
				event: aMonthEvent
				count: daysUntilEvent)
			ifTrue:[0]
			ifFalse:[1]