instance creation
with: firstColl with: secondColl with: thirdColl with: fourthColl

	^self basicNew
		collections: {firstColl. secondColl. thirdColl. fourthColl};
		yourself