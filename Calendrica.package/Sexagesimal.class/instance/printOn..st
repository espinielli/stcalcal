printing
printOn: aStream
	"when printing negative angles we put the '-' in front only."
	self prefixPrintOn: aStream.
	self sixtyTwoPrintOn: aStream.
	self sixtyOnePrintOn: aStream.
	self sixtyZeroPrintOn: aStream.
	self postfixPrintOn: aStream.