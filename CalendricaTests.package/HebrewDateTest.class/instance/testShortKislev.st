testing
testShortKislev

	self assert: (HebrewDate isShortKislev: 1) = false.
	self assert: (HebrewDate isShortKislev: 3) = true.
