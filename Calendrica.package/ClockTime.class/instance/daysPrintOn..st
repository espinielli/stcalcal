printing
daysPrintOn: aStream
	"print days part.
	(It follws the same pattern as AASexagesimal>>sixtyTwoPrintOn:)."
	self days printOn: aStream.
	aStream nextPut: self class symbolForDays.
