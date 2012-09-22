testing
testAccessing

	self assert: reingoldbirthday asRomanDate event = RomanMonthEvent kalends.
	self assert: reingoldbirthday asRomanDate month = 11.
	self assert: reingoldbirthday asRomanDate count = 3.
	self assert: reingoldbirthday asRomanDate leap = false.
	self assert: reingoldbirthday asRomanDate year = 1945.

	self assert: spiniellibirthday asRomanDate event = RomanMonthEvent kalends.
	self assert: spiniellibirthday asRomanDate month = 2.
	self assert: spiniellibirthday asRomanDate count = 16.
	self assert: spiniellibirthday asRomanDate leap = false.
	self assert: spiniellibirthday asRomanDate year = 1967.
	
	self assert: bisextile leap = true.