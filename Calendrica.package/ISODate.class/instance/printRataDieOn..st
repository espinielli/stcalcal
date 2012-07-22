printing
printRataDieOn: aStream
	"Print the non-time part."

	self year printOn: aStream.
	aStream nextPut: $/.
	self week printOn: aStream.
	aStream nextPut: $/.
	self day printOn: aStream.