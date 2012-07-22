testing
testDayOfWeek

	"R.D.(0) was Monday"
	self assert: RataDieDate epoch dayOfWeek = Weekday sunday.
	self assert: spiniellibirthday dayOfWeek  =  Weekday monday.
	self assert: reingoldbirthday dayOfWeek  =  Weekday monday.