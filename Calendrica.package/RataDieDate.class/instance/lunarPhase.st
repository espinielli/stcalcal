astronomy
lunarPhase
	"Return the lunar phase, as an angle in degrees, at moment tee.
	An angle of 0 means a new moon, 90 degrees means the first quarter, 180 means a full moon, and 270 degrees means the last quarter."
	| n phi phiPrime t0 |
	phi := ((self lunarLongitude - self solarLongitude) \\ 360).
	t0 := AAEarth nthNewMoon: 0.
	n := ((self moment - t0) / AAEarth meanSynodicMonth) rounded.
	phiPrime := 360 * (((self moment - self nthNewMoon: n) / AAEarth meanSynodicMonth) \\ 1).
	^((phi - phiPrime) abs > 180)
		ifTrue: [phiPrime]
		ifFalse:[phi]
