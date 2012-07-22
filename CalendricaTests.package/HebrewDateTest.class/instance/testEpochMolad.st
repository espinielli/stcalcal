testing
testEpochMolad

	self
		assert: (HebrewDate moladForMonth: HebrewMonth tishri year: 1)
		almostEquals: -1373427.0337962962
		upto: 9.