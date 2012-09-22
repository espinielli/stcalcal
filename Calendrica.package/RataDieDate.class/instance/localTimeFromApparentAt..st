astronomy
localTimeFromApparentAt: aLocation
	"Return local time from sundial time self at location, aLocation."
	^self moment - (AAEquationOfTime atJd: (self universalTimeAt: aLocation))
