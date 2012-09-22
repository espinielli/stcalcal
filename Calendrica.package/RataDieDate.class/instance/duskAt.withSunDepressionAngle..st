astronomy
duskAt: aLocation withSunDepressionAngle: alpha
	"Return standard time in evening at aLocation when depression angle of the Sun is alpha.
	Return BOGUS if there is no dusk on this date."
	| meAt18 result |
	self flag: #espinTODO.
	meAt18 := self class moment: (self rd + 18 "hours").
	"evening event is false"
	result := meAt18 momentOfSunDepressionAngle: alpha at: aLocation onEvent: false.
	^result standardTimeAt: aLocation