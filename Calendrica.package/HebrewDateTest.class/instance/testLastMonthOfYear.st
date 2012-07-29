testing
testLastMonthOfYear

	self assert: (HebrewDate lastMonthOfYear: 5706) = (HebrewMonth adarII).
	self assert: (HebrewDate lastMonthOfYear: 50) = (HebrewMonth adar).