astronomy
meanSiderealTimeOfDay
	"Return the mean sidereal time of day from moment tee expressed as hour angle.
	Adapted from 'Astronomical Algorithms' by Jean Meeus, Willmann_Bell, Inc., 1991."
	| c |
	c := (self - self class j2000) moment / 36525.
	^ ((AAPolynomial
		coefficients:
			{280.46061837.
			(36525 * 360.98564736629).
			0.000387933.
			(-1/38710000)}) at: c) \\ 360.
