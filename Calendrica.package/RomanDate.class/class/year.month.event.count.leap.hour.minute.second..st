instance creation
year: aYearNumber month: aMonthNumber event: aMonthEvent count: daysUntilEvent leap: aLeapDayBoolean hour: anHour minute: someMinutes second: someSeconds

	^ (self basicNew)
		year: aYearNumber
		month: aMonthNumber
		event: aMonthEvent
		count: daysUntilEvent
		leap: aLeapDayBoolean
		hour: anHour
		minute: someMinutes
		second: someSeconds;
		yourself
