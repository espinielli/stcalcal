testing
testMinMax

	self assert: (IntegerSearchStream from: 0 withCondition: [:v | v > 3]) min = 4.
	self assert: (IntegerSearchStream from: 0 withCondition: [:v | v > 3]) max = -1.
	self assert: (IntegerSearchStream minStartingFrom: 0 withCondition: [:v | v > 3]) = 4.
	self assert: (IntegerSearchStream maxStartingFrom: 0 withCondition: [:v | v > 3]) = -1.
