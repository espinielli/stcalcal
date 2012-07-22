private
sixtyOnePrintOn: aStream
	"print sixtyOne part.
	(It follws the same pattern as sixtyTwoPrintOn:)."
	self sixtyOne abs printOn: aStream.
	aStream nextPut: self class symbolForSixtyOne.
