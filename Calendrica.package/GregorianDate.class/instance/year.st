accessing
year
	"Answer the year.
	This is equivalent to gregorian_year_from_fixed in PyCalCal"
	| d0 n400 d1 n100 d2 n4 d3 n1 year |
	d0 := self rd - GregorianDate epoch rd.
	n400 := d0 // 146097.
	d1 := d0 \\ 146097.
	n100 := d1 // 36524.
	d2 := d1 \\ 36524.
	n4 := d2 // 1461.
	d3 := d2 \\ 1461.
	n1 := d3 // 365.
	year := (400 * n400) + (100 * n100) + (4 * n4) + n1.
	^ ((n100 = 4) or: [n1 = 4])
		ifTrue: [year]
		ifFalse: [year + 1]