testing
testElapsedDaysForYear

	self assert: (HebrewDate elapsedDaysForYear: 1)  = 0.
	self assert: (HebrewDate elapsedDaysForYear: 2)  = 355.
	self assert: (HebrewDate elapsedDaysForYear: 1234)  = 450343.
	self assert: (HebrewDate elapsedDaysForYear: 123456)  =  45091534.
