testing
testNthOccurrenceOfWeekday

	self assert: ((RataDieDate epoch) nthOccurrence: 1 ofWeekday: Weekday monday) dayOfWeek = Weekday monday.
	self assert: (RataDieDate epoch nthOccurrence: 2 ofWeekday: Weekday monday) = (RataDieDate rd: 8).
	self assert: (spiniellibirthday nthOccurrence: -1 ofWeekday:  Weekday sunday) rd =  (spiniellibirthday rd - 1).
