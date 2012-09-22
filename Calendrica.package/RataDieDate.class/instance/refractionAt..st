astronomy
refractionAt: aLocation
	"Return refraction angle at aLocation.
	The time parameter is not being used here, but could be used in a more 
	refined calculation that takes average atmospheric conditions into account."
	| capR dip h |
	h := {0 "meters". aLocation elevation} max.
	capR := AAEarth equatorialRadius.
	dip := (capR / (capR + h)) arcCos radiansToDegrees.
	^(AAAngle degrees: 0 minutes: 50 seconds: 0) +
		dip +
		((AAAngle degrees: 0 minutes: 0 seconds:19) * h sqrt)