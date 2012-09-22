testing
testDaysInYear

	self assert: (HebrewDate daysInYear: 1) = 355.
	self assert: (HebrewDate daysInYear: 3) = 383.
	self assert: (HebrewDate daysInYear: 4) = 354.
	self assert: (HebrewDate daysInYear: 123456) = 355.
