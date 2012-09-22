enumerating
inject: aValue into: aBlock
	"Accumulate a running value enumerate over each val of collections and evaluate the block with them starting with aValue"
	| nextValue |
	nextValue := aValue.
	1 to: collections first size do:
		[ :index | nextValue := nextValue + (aBlock withAll: (self valuesAt: index))].
	^nextValue