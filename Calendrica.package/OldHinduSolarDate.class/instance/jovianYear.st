accessing
jovianYear
	"Jovian year number corresponding to the start of a solar year for self."
	^ (27 + (self dayCount // (self class aryaJovianPeriod / 12))) @\\ 60