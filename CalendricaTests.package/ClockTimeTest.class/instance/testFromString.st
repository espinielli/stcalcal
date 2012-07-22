testing
testFromString

	self assert: (ClockTime fromString: '50.831h') time = 50.831.
	self assert: (ClockTime fromString: '50h49m48s') hours = 2.
	self assert: (ClockTime fromString: '20h49m48s') printString = '20h49m48s'.
	self assert: (ClockTime fromString: '-20h49m48s') printString = '-20h49m48s'.
	self assert: (ClockTime fromString: '30h49m48s') printString = '1d6h49m48s'.
	self assert: (ClockTime fromString: '-30h49m48s') printString = '-1d6h49m48s'.
	self assert: (ClockTime fromString: '1d6h49m48s') printString = '1d6h49m48s'.
	self assert: (ClockTime fromString: '-1d6h49m48s') printString = '-1d6h49m48s'.
	self assert: (ClockTime fromString: '50h49m48s') minutes = 49.
