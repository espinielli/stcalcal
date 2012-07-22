testing
testOnOrAfterWeekday

	self assert: ((RataDieDate rd: 2) onOrAfterWeekday: Weekday monday) = (RataDieDate rd: 8).
	self assert: (spiniellibirthday onOrAfterWeekday: Weekday sunday) rd =  (spiniellibirthday rd + 6).
