astronomy
julianCenturiesSinceJ2000
	"Return Julian centuries since 2000 at this moment."
	^ ((self class dynamicalTimeFromUniversal: self) - self class j2000) / 36525