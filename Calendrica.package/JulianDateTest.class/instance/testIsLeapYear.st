testing
testIsLeapYear

	self assert: (JulianDate isLeapYear: 4) = true.
	self assert: (JulianDate isLeapYear: 16) = true.
	self assert: (JulianDate isLeapYear: -5) = true.
	self assert: (JulianDate isLeapYear: -17) = true.

	self assert: (JulianDate isLeapYear: -14) = false.
	self assert: (JulianDate isLeapYear: -4) = false.
	self assert: (JulianDate isLeapYear: 0) = false.
