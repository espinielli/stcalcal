astronomy
middayAt: aLocation
	"Return standard time on this date of midday at aLocation."
	"standard_from_local(local_from_apparent(date + hr(mpf(12)),
                                                   location), location)"
	^(RataDieDate moment: ((RataDieDate moment: (self rd + 12)) localTimeFromApparentAt: aLocation)) standardTimeAt: aLocation