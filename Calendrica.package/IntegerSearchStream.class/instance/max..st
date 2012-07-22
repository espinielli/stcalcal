private
max: index

	^ (self condition value: index) not
		ifTrue: [index - 1]
		ifFalse:[self max: index + 1]