testing
testIsLeapYear

	self assert: (CopticDate isLeapYear: 3) = true.
	self assert: (CopticDate isLeapYear: 0) = false.
	self assert: (CopticDate isLeapYear: -3) = false.
	self assert: (CopticDate isLeapYear: -33) = true.
	self assert: (CopticDate isLeapYear: 33) = false.
