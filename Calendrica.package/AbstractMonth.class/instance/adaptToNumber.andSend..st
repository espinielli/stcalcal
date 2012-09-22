converting
adaptToNumber: rcvr andSend: selector
	"If I am involved in arithmetic with a Number, get Rata Die number."
	^ rcvr perform: selector with: self rd