private
rataDieFromYear: aYear month: aMonth day: aDay
	"equivalent to fixed-from-observational-islamic in Calendrical Calculations"
	| midmonth |
	midmonth := IslamicDate epoch rd + ((((aYear - 1) * 12) + aMonth rd - 0.5) * AAEarth meanSynodicMonth) floor.
	self rataDiePart: ((self class phasisOnOrBefore: midmonth at: self location) + aDay - 1)
