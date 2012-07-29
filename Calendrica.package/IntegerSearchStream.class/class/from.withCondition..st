instance creation
from: aNumber withCondition: aBlock

	^ (self new)
		start: aNumber;
		condition: aBlock.