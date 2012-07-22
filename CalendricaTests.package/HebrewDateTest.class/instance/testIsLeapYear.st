testing
testIsLeapYear

	self assert: (HebrewDate isLeapYear: 2) = false.
	self assert: (HebrewDate isLeapYear: 4) = false.
	self assert: (HebrewDate isLeapYear: -4) = false.


	self assert: (HebrewDate isLeapYear: 0) = true.
	self assert: (HebrewDate isLeapYear: 3) = true.
	self assert: (HebrewDate isLeapYear: 6) = true.
	self assert: (HebrewDate isLeapYear: 8) = true.
	self assert: (HebrewDate isLeapYear: 11) = true.
	self assert: (HebrewDate isLeapYear: 14) = true.
	self assert: (HebrewDate isLeapYear: 17) = true.
	self assert: (HebrewDate isLeapYear: 19) = true.
"---"
	self assert: (HebrewDate isLeapYear: 22) = true.
	self assert: (HebrewDate isLeapYear: -16) = true.
