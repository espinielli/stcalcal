testing
testIsLeapYear

	self assert: spiniellibirthday isLeapYear = false.
	self assert: (spiniellibirthday nextNthDay: 365) isLeapYear = true.
	self assert: (GregorianDate year: 2000 month: 2 day: 1) isLeapYear = true.
	self assert: (GregorianDate isLeapYear: 1200) = true.
	self assert: (GregorianDate isLeapYear: 1300) = false.
	self assert: (GregorianDate isLeapYear: -1200) = true.
	self assert: (GregorianDate isLeapYear: -1300) = false.
	self assert: (GregorianDate isLeapYear: -100) = false.
	self assert: (GregorianDate isLeapYear: -600) = false.
	self assert: (GregorianDate isLeapYear: -400) = true.
