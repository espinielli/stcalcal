astronomy
momentOfSunDepressionAngle: alpha at: aLocation onEvent: early.
	"Return the moment in local time near self when depression angle of sun is alpha (negative if above horizon) at aLocation; early is true when MORNING event is sought, and false for EVENING.
	Returns BOGUS if depression angle is not reached."
	self flag: #espinTODO.