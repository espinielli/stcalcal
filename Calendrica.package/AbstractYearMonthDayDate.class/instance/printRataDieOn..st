printing
printRataDieOn: aStream
	"Print the non-time part."

	self year printOn: aStream.
	aStream nextPut: $/.
	self month rd printOn: aStream.
	aStream nextPut: $/.
	self day printOn: aStream.