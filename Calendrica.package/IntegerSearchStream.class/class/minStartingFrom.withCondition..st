instance creation
minStartingFrom: aNumber withCondition: aBlock

	^ (self new)
		start: aNumber;
		condition: aBlock;
		min.