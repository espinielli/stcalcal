instance creation
from: aRataDie withCondition: aBlock

	^ (self new)
		start: aRataDie;
		condition: aBlock.