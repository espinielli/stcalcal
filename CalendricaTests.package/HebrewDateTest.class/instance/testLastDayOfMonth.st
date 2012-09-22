testing
testLastDayOfMonth

	self assert: (HebrewDate lastDayOfMonth: HebrewMonth iyyar forYear: 1) = 29.
	self assert: (HebrewDate lastDayOfMonth: HebrewMonth nisan forYear: 1) = 30.
	self assert: (HebrewDate lastDayOfMonth: HebrewMonth adar forYear: 1) = 29.
	self assert: (HebrewDate lastDayOfMonth: HebrewMonth adar forYear: 12345) = 30.
	self assert: (HebrewDate lastDayOfMonth: HebrewMonth adar forYear: 3) = 30.
	self assert: (HebrewDate lastDayOfMonth: HebrewMonth marheshvan forYear: 1) = 30.
	self assert: (HebrewDate lastDayOfMonth: HebrewMonth marheshvan forYear: 1234) = 29.
	self assert: (HebrewDate lastDayOfMonth: HebrewMonth marheshvan forYear: 12345) = 30.
	self assert: (HebrewDate lastDayOfMonth: HebrewMonth marheshvan forYear: 3) = 29.