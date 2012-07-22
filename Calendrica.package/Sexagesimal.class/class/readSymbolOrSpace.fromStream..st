private
readSymbolOrSpace: aSymbol fromStream: aStream
	"consume the relevant aSymbol or space from aStream, answer nil otherwise."
	^aStream atEnd
		ifFalse: [((aStream peek = aSymbol) or: [aStream peek = Character space])
			ifTrue: [aStream next]
			ifFalse: [nil]]
		ifTrue: [nil]
