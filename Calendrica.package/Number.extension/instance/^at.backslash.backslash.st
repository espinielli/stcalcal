*calendrica-core
@\\ y
	"amod function (defined for non zero y!)
	x @\\ y returns y if x \\ y equals 0, x \\y otherwise"
	^ (self \\ y) = 0
		ifTrue:[ y ]
		ifFalse:[ self \\ y]