*calendrica-core
onOrBeforeOccurrence: kthOccurrence forRepeatingCycleLong: aLenghtM whereZeroOfCycleIsNumber: aStartNumber
	"Return the occurrence of the 'k'-th instance of a repeating 'm'-instance cycle that is
	closest to but not past incstance number 'd', where instance number 0 (zero) is instance
	'delta' of the 'm'-instance cycle, see 1.54 in Calendrical Caluclations"
	self - ((self + aStartNumber - kthOccurrence) // aLenghtM)