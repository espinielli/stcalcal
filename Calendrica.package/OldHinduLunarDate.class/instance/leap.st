accessing
leap

	| sun newMoon |
	sun := self dayCount + (6/24).
	newMoon := sun - (sun \\ self class aryaLunarMonth).
	^ ((OldHinduSolarDate aryaSolarMonth - self class aryaLunarMonth) >= (newMoon \\ OldHinduSolarDate aryaSolarMonth))
		and: [(newMoon \\ OldHinduSolarDate aryaSolarMonth) > 0]