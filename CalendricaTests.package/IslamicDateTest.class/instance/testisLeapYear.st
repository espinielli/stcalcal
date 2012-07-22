testing
testisLeapYear

	self assert: (IslamicDate isLeapYear: 0) = false.
	self assert: (IslamicDate isLeapYear: -2) = false.
	self assert: (IslamicDate isLeapYear: -5) = false.
	self assert: (IslamicDate isLeapYear: 34) = false.
	self assert: (IslamicDate isLeapYear: -35) = false.


	self assert: (IslamicDate isLeapYear: 2) = true.
	self assert: (IslamicDate isLeapYear: 5) = true.
	self assert: (IslamicDate isLeapYear: 35) = true.
	self assert: (IslamicDate isLeapYear: -34) = true.
