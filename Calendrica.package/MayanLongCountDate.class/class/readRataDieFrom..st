instance creation
readRataDieFrom: aStream
	"something like '1/2/3/4/5'."
	| parts baktun katun tun uinal kin date |
	parts := aStream contents subStrings: '/'.
	baktun := parts first asInteger.
	katun := parts second asInteger.
	tun := parts third asInteger.
	uinal := parts fourth asInteger.
	kin := parts fifth asInteger.
	date :=  self baktun: baktun katun: katun tun: tun uinal: uinal kin: kin.
	^ date rd