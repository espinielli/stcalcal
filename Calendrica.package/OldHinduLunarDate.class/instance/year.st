accessing
year

	| newMoon sun |
	sun := self dayCount + (6/24).
	newMoon := sun - (sun \\ self class aryaLunarMonth).
	^ ((newMoon + OldHinduSolarDate aryaSolarMonth) / OldHinduSolarDate aryaSolarYear) ceiling - 1
