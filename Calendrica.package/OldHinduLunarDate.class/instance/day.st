accessing
day

	| sun |
	sun := self dayCount + (6/24).
	^ ((sun // self class aryaLunarDay) \\ 30) + 1