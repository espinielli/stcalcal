private
rataDieFromYear: aYear month: aMonth day: aDay
	"equivalent to fixed-from-old-hindu-solar in Calendrical Calculations"
	self rataDiePart:
		(self epoch rd +
		(aYear * self class aryaSolarYear) + "aYear (elapsed since epoch) multiplied by average year length."
		((aMonth - 1) * self class aryaSolarMonth) + "duration of elapsed months"
		aDay + "duration of days"
		(-30/24)) ceiling "to take into account that the days starts at 6 a.m."