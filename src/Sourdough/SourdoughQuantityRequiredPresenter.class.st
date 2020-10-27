Class {
	#name : #SourdoughQuantityRequiredPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'addedQuantityLabel',
		'totalDoughWeightLabel',
		'pouringWaterLabel',
		'pouringWaterInput',
		'saltOnPouringWaterLabel',
		'saltOnPouringWaterInput',
		'saltOnTotalWaterLabel',
		'saltOnTotalWaterInput',
		'sourdoughLabel',
		'sourdoughInput',
		'totalDoughWeightInput'
	],
	#category : #'Sourdough-UI'
}

{ #category : #specs }
SourdoughQuantityRequiredPresenter class >> defaultSpec [
	^ SpGridLayout new beColumnNotHomogeneous; beRowHomogeneous; 
						add: #addedQuantityLabel at: 1 @ 1 span: 2 @ 1;
						add: #pouringWaterLabel at: 1 @ 2;
						add: #pouringWaterInput at: 2 @ 2;
						add: #sourdoughLabel at: 1 @ 3;
						add: #sourdoughInput at: 2 @ 3;
						add: #saltOnPouringWaterLabel at: 1 @ 4;
						add: #saltOnPouringWaterInput at: 2 @ 4;
						add: #saltOnTotalWaterLabel at: 1 @ 5;
						add: #saltOnTotalWaterInput at: 2 @ 5;
						add: #totalDoughWeightLabel at: 1 @ 6;
						add: #totalDoughWeightInput at: 2 @ 6;
		yourself
]

{ #category : #examples }
SourdoughQuantityRequiredPresenter class >> open [
	<example>
	^ self new openWithSpec 
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> addedQuantityLabel [
	^ addedQuantityLabel
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> addedQuantityLabel: anObject [
	addedQuantityLabel := anObject
]

{ #category : #initialization }
SourdoughQuantityRequiredPresenter >> initializePresenters [
	addedQuantityLabel := self newLabel label: 'quantity to be added (in grams)'; addStyle: 'section'.
	
	pouringWaterLabel := self newLabel label: 'pouring water'.
	pouringWaterInput := self newTextInput enabled: false.
	
	sourdoughLabel := self newLabel label: 'sourdough'.
	sourdoughInput := self newTextInput enabled: false.
	
	saltOnPouringWaterLabel := self newLabel label: 'Minimum quantity of salt'; help: '(on casting water)'.
	saltOnPouringWaterInput := self newTextInput enabled: false.
	
	saltOnTotalWaterLabel := self newLabel label: 'Minimum quantity of salt'; help:  '(on total water)'.
	saltOnTotalWaterInput := self newTextInput enabled: false.
	
	totalDoughWeightLabel := self newLabel label: 'total weight of the dough'; help: '(without salt)'.
	totalDoughWeightInput := self newTextInput enabled: false.

]

{ #category : #'instance creation' }
SourdoughQuantityRequiredPresenter >> open [
<script: 'self new openWithSpec'>
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> pouringWaterInput [
	^ pouringWaterInput
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> pouringWaterInput: anObject [
	pouringWaterInput := anObject
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> pouringWaterLabel [
	^ pouringWaterLabel
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> pouringWaterLabel: anObject [
	pouringWaterLabel := anObject
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> saltOnPouringWaterInput [
	^ saltOnPouringWaterInput
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> saltOnPouringWaterInput: anObject [
	saltOnPouringWaterInput := anObject
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> saltOnPouringWaterLabel [
	^ saltOnPouringWaterLabel
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> saltOnPouringWaterLabel: anObject [
	saltOnPouringWaterLabel := anObject
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> saltOnTotalWaterInput [
	^ saltOnTotalWaterInput
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> saltOnTotalWaterInput: anObject [
	saltOnTotalWaterInput := anObject
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> saltOnTotalWaterLabel [
	^ saltOnTotalWaterLabel
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> saltOnTotalWaterLabel: anObject [
	saltOnTotalWaterLabel := anObject
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> sourdoughInput [
	^ sourdoughInput
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> sourdoughInput: anObject [
	sourdoughInput := anObject
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> sourdoughLabel [
	^ sourdoughLabel
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> sourdoughLabel: anObject [
	sourdoughLabel := anObject
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> totalDoughWeightInput [
	^ totalDoughWeightInput
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> totalDoughWeightInput: anObject [
	totalDoughWeightInput := anObject
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> totalDoughWeightLabel [
	^ totalDoughWeightLabel
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> totalDoughWeightLabel: anObject [
	totalDoughWeightLabel := anObject
]
