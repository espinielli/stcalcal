accessing
nonesOfMonth: aMonthNumber
	"nones are always 8 days before the ides"
	^ (self idesOfMonth: aMonthNumber) - 8