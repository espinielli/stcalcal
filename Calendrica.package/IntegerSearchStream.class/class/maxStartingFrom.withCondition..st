instance creation
maxStartingFrom: aNumber withCondition: aBlock

	^ (self new)
		start: aNumber;
		condition: aBlock;
		max.