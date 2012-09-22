private
rataDieFromYear: aYear month: aMonth leap: aBoolean day: aDay
	"equivalent to fixed-from-old-hindu-lunar in Calendrical Calculations"
	| mina lunarNewYear temp |
	mina := ((12 * aYear) - 1) * OldHinduSolarDate aryaSolarMonth.
	lunarNewYear := self class aryaLunarMonth * ((mina // self class aryaLunarMonth) + 1).
	temp := ((aBoolean not) and: [ ((lunarNewYear - mina) / (OldHinduSolarDate aryaSolarMonth - self class aryaLunarMonth)) ceiling <= aMonth])
				ifTrue:[aMonth]
				ifFalse:[aMonth - 1].
	temp := (OldHinduSolarDate epoch rd + 
            lunarNewYear +
            (self class aryaLunarMonth * temp) +
            ((aDay - 1) * self class aryaLunarDay) +
            (-6/24)) ceiling.

	self rataDiePart: temp