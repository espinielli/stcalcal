private
sixtyTwo: a60Two sixtyOne: a60One sixtyZero: a60Zero
	"For negative angles all components should be negatives, we force this."
	sign:= ({a60Two. a60One. a60Zero} anySatisfy: [:each| each negative])
				ifTrue:[-1]
				ifFalse:[1].
	sixtyTwo := a60Two abs * sign.
	sixtyOne := a60One abs  * sign.
	sixtyZero := a60Zero abs * sign.