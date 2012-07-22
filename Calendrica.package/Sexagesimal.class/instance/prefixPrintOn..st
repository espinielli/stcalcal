private
prefixPrintOn: aStream
	^aStream nextPutAll: (self sign negative
							ifTrue: ['-']
							ifFalse: [String empty])