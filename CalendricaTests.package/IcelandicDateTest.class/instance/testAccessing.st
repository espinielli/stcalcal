testing
testAccessing

	self assert: reingoldbirthday asIcelandicDate weekday = Weekday monday.
	self assert: reingoldbirthday asIcelandicDate week = 3.
	self assert: reingoldbirthday asIcelandicDate season = Season winter.
	self assert: reingoldbirthday asIcelandicDate year = 1945.
