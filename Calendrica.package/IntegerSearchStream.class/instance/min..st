private
min: index

	^ (self condition value: index)
		ifTrue: [index]
		ifFalse:[self min: index + 1]