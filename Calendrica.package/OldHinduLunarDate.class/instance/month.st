accessing
month

	| sun newMoon |
	sun := self dayCount + (6/24).
	newMoon := sun - (sun \\ self class aryaLunarMonth).
	^ (((newMoon / OldHinduSolarDate aryaSolarMonth) ceiling) \\ 12) + 1