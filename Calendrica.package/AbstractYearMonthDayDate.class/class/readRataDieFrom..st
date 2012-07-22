helpers
readRataDieFrom: aStream

	| parsedDate date |
	parsedDate := Date readFrom: aStream pattern: 'y/m/d'.
	date :=  self year: parsedDate  year month: parsedDate monthIndex day: parsedDate dayOfMonth.
	^ date rd