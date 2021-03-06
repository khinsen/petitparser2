"
An abstract parser that repeatedly parses between 'min' and 'max' instances of its delegate. The default configuration parses an infinite number of elements, as 'min' is set to 0 and 'max' to infinity (SmallInteger maxVal).
"
Class {
	#name : #PP2RepeatingNode,
	#superclass : #PP2DelegateNode,
	#instVars : [
		'min',
		'max'
	],
	#category : #'PetitParser2-Nodes'
}

{ #category : #visiting }
PP2RepeatingNode >> accept: aPP2Visitor [
	^ aPP2Visitor visitRepeating: self
]

{ #category : #initialization }
PP2RepeatingNode >> initialize [
	super initialize.
	min := 0.
	max := Float infinity.
]

{ #category : #testing }
PP2RepeatingNode >> isRepeating [
	^ true
]

{ #category : #accessing }
PP2RepeatingNode >> max [
	^ max
]

{ #category : #accessing }
PP2RepeatingNode >> max: anObject [
	max := anObject
]

{ #category : #accessing }
PP2RepeatingNode >> min [
	^ min
]

{ #category : #accessing }
PP2RepeatingNode >> min: anObject [
	min := anObject
]
