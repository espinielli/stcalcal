private
rataDieFromYear: aYear month: aMonth day: aDay
	"equivalent to fixed-from-egyptian in Calendrical Calculations"
	self rataDiePart: self epoch rd +
				(365 * (aYear - 1)) +
				(30 * (aMonth - 1)) +
				aDay - 1.