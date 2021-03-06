Extension { #name : #PP2EpsilonNode }

{ #category : #'*PetitParser2-GUI-Morhpic' }
PP2EpsilonNode >> exampleOn: aStream [
	
]

{ #category : #'*PetitParser2-GUI-Morhpic' }
PP2EpsilonNode >> morphicShapeSeen: aSet depth: anInteger [
	^ self morphicShapeSeen: aSet depth: anInteger do: [ :cc |
		self newRowMorph
			addMorphBack: (self newColumnMorph
				addMorphBack: (self newSpacerMorph height: 10);
				addMorphBack: (LineMorph from: 0 @ 0 to: 20 @ 0 color: Color black width: 1);
				yourself);
			yourself ]
]
