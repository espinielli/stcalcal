instance creation
readRataDieFrom: aStream
	"something like '1966/3/true/15'."
	| parts year month leap day date |
	parts := aStream contents subStrings: '/'.
	year := parts first asInteger.
	month := parts second asInteger.
	leap := Boolean readFrom: parts third.
	day := parts fourth asInteger.
	date :=  self year: year month: month leap: leap day: day.
	^ date rd