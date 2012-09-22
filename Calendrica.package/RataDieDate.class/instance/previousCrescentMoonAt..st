astronomy
previousCrescentMoonAt: aLocation
	"Return the closest fixed date on or before self, when crescent moon first became visible at location aLocation.
	See phasis-on-or-before in Calendrica Calculations."
	| mean tau |
	mean := self rd - ((self + 1) lunarPhase / 360 * AAAstronomicalConstants MeanSynodicMonth) floor.
	tau := (((self rd - mean) <= 3) and: [(self visibleCrescentAt: aLocation) not])
		ifTrue: [mean - 30]
		ifFalse:[mean - 2].
	^ IntegerSearchStream minStartingFrom: tau withCondition: [:d | (self class rd: d) visibleCrescentAt: aLocation]