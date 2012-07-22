testing
testArithmetic

	self assert: (((Sexagesimal decimal: 30.1) + (Sexagesimal decimal: 20)) decimal closeTo: 50.1).
	self assert: (((Sexagesimal decimal: 30.1) - (Sexagesimal decimal: 20)) decimal  closeTo: 10.1).
	self assert: (((Sexagesimal decimal: 30.1) * 3) decimal  closeTo: 90.3).
