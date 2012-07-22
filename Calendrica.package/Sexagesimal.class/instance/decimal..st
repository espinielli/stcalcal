private
decimal: aFloat
	"For negative angles all components should be negatives, we force this."
	sign:= aFloat negative
				ifTrue:[-1]
				ifFalse:[1].
	sixtyTwo := aFloat abs floor * sign.
	sixtyOne :=  ((aFloat abs fractionPart * 60) rem: 60) floor * sign.
	sixtyZero := ((aFloat abs fractionPart * 3600) rem: 60) * sign.