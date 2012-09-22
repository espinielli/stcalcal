testing
testAccessing

	self assert: spiniellibirthday asGregorianDate day = 30.
	self assert: spiniellibirthday asGregorianDate month = GregorianMonth january.
	self assert: spiniellibirthday asGregorianDate year = 1967.

	self assert: reingoldbirthday asGregorianDate day = 12.
	self assert: reingoldbirthday asGregorianDate month = GregorianMonth november.
	self assert: reingoldbirthday asGregorianDate year = 1945.