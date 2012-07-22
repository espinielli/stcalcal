testing
testOnOrBeforeWeekday

	"R.D.(0) was Monday"
	self assert: (RataDieDate epoch onOrBeforeWeekday: Weekday monday) dayOfWeekName = #Monday.
	self assert: ((RataDieDate rd: 2) onOrBeforeWeekday: Weekday sunday) = RataDieDate epoch.

	self assert: (spiniellibirthday onOrBeforeWeekday: Weekday sunday) rd =  (spiniellibirthday rd - 1).
	self assert: (spiniellibirthday onOrBeforeWeekday: Weekday monday) =  spiniellibirthday.
	self assert: (spiniellibirthday onOrBeforeWeekday: Weekday tuesday) rd =  (spiniellibirthday rd - 6).
