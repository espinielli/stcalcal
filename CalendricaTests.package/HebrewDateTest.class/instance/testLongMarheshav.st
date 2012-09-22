testing
testLongMarheshav

	self assert: (HebrewDate isLongMarheshvan: 3) = false.
	self assert: (HebrewDate isLongMarheshvan: 1) = true.
