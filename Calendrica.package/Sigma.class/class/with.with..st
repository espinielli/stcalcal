instance creation
with: firstColl with: secondColl

	^self basicNew
		collections: {firstColl. secondColl};
		yourself