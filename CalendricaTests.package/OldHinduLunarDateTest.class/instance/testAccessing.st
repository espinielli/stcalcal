testing
testAccessing

	| tmp |
"	self assert: reingoldbirthday asOldHinduLunarDate day = 29.
	self assert: reingoldbirthday asOldHinduLunarDate month = 7.
	self assert: reingoldbirthday asOldHinduLunarDate year = 5046.
"	
	tmp := OldHinduLunarDate readFrom: '5067/10/false/20 11h25m0s (Old Hindu Lunar)' readStream.
	self assert: tmp day = 20.
	self assert: tmp year = 5067.
	self assert: tmp month = 10.
	self assert: tmp leap = false.