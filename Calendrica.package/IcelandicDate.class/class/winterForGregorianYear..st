helpers
winterForGregorianYear: aYear
	"winter is 180 days earlier than summer"
	^ (self summerForGregorianYear: aYear + 1) previousNthDay: 180          