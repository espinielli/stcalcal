accessing
month

	| sun |
	"number of days and the fraction of days (6h) that have elapsed since epoch
	at mean sunrise"
	sun := self dayCount + (6/24).
	^ ((sun // self class aryaSolarMonth) \\ 12) + 1