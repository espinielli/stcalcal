testing
testPrint

	self assert: (ClockTime hours: 10 minutes: 20 seconds: 30.1) printString = '10h20m30.1s'.
	self assert: (ClockTime hours: -10 minutes: 20 seconds: 30.1) printString = '-10h20m30.1s'.
	self assert: (ClockTime hours: -10 minutes: -20 seconds: 30.1) printString = '-10h20m30.1s'.