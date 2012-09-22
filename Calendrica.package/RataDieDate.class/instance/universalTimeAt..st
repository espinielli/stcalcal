astronomy
universalTimeAt: aLocation
	"Return universal time from self (considered local time) at location, aLocation."
	self flag: #espinTODO. "shouldn't I return a RD?"
	^self moment - aLocation timezone
