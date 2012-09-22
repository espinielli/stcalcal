astronomy
ephemerisCorrection
	"Return Dynamical Time minus Universal Time (in days) for this moment.
	Adapted from 'Astronomical Algorithms' by Jean Meeus, Willmann_Bell, Inc., 1991."
	| c x year |
	year := self asGregorianDate.
	c := ((GregorianDate year: 1900 month: 1 day: 1) rd - (GregorianDate year: year month: 1 day: 1) rd) / 36525.
	((1988 <= year) and: [year <= 2019])
		ifTrue: [ ^ 1/86400 * (year - 1933)].
	((1900 <= year) and: [year <= 1987])
		ifTrue: [ ^ (AAPolynomial coefficients: #(-0.00002 0.000297
												0.025184 -0.181133
												0.553040 -0.861938
												0.677066 -0.212591)) valueAt: c].
	((1800 <= year) and: [year <= 1899])
		ifTrue: [ ^ (AAPolynomial coefficients: #(-0.000009 0.003844
												0.083563 0.865736
												4.867575 15.845535
												31.332267 38.291999
												28.316289 11.636204
												2.043794)) valueAt: c].
	((1700 <= year) and: [year <= 1799])
		ifTrue: [ ^ 1/86400 * ((AAPolynomial coefficients: #(8.118780842 -0.005092142
															0.003336121 -0.0000266484)) valueAt: (year - 1700))].
	((1620 <= year) and: [year <= 1699])
		ifTrue: [ ^ 1/86400 * ((AAPolynomial coefficients: #(196.58333 -4.0675 0.0219167)) valueAt: (year - 1600))].
	
	x := 12 hours moment + ((GregorianDate newYearDayForYear: 1810) rd - (GregorianDate newYearDayForYear: year)) rd.
	^ 1/86400 * (((x * x) / 41048480) - 15)
