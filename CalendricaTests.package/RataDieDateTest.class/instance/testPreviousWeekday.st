testing
testPreviousWeekday

	self assert: ((RataDieDate rd: 2) previousWeekday: Weekday sunday) dayOfWeek = Weekday sunday.
	self assert: (spiniellibirthday previousWeekday: Weekday sunday) rd =  (spiniellibirthday rd - 1).
	self assert: (spiniellibirthday previousWeekday: Weekday tuesday) rd =  (spiniellibirthday rd - 6).