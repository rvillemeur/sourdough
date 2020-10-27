Class {
	#name : #SourdoughInformationPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'informationLabel',
		'sourdoughFlourLabel',
		'sourdoughFlourInput',
		'sourdoughWaterLabel',
		'sourdoughWaterInput',
		'apparentHydrationLevelLabel',
		'apparentHydrationLevelInput',
		'totalFlourLabel',
		'totalFlourInput',
		'totalWaterWeightLabel',
		'totalWaterWeightInput'
	],
	#category : #'Sourdough-UI'
}

{ #category : #specs }
SourdoughInformationPresenter class >> defaultSpec [

	^ SpGridLayout new beRowHomogeneous
		  add: #informationLabel at: 1 @ 1 span: 2 @ 1;
		  add: #apparentHydrationLevelLabel at: 1 @ 2;
		  add: #apparentHydrationLevelInput at: 2 @ 2;
		  add: #totalWaterWeightLabel at: 1 @ 3;
		  add: #totalWaterWeightInput at: 2 @ 3;
		  add: #totalFlourLabel at: 1 @ 4;
		  add: #totalFlourInput at: 2 @ 4;
		  add: #sourdoughWaterLabel at: 1 @ 5;
		  add: #sourdoughWaterInput at: 2 @ 5;
		  add: #sourdoughFlourLabel at: 1 @ 6;
		  add: #sourdoughFlourInput at: 2 @ 6;
		  yourself
]

{ #category : #examples }
SourdoughInformationPresenter class >> open [
	<example>
	^ self new openWithSpec 
]

{ #category : #accessing }
SourdoughInformationPresenter >> apparentHydrationLevelInput [
	^ apparentHydrationLevelInput
]

{ #category : #accessing }
SourdoughInformationPresenter >> apparentHydrationLevelInput: anObject [
	apparentHydrationLevelInput := anObject
]

{ #category : #accessing }
SourdoughInformationPresenter >> apparentHydrationLevelLabel [
	^ apparentHydrationLevelLabel
]

{ #category : #accessing }
SourdoughInformationPresenter >> apparentHydrationLevelLabel: anObject [
	apparentHydrationLevelLabel := anObject
]

{ #category : #accessing }
SourdoughInformationPresenter >> informationLabel [
	^ informationLabel
]

{ #category : #accessing }
SourdoughInformationPresenter >> informationLabel: anObject [
	informationLabel := anObject
]

{ #category : #initialization }
SourdoughInformationPresenter >> initializePresenters [
	informationLabel := self newLabel label: 'additional information'; addStyle: 'section'.
	
	sourdoughFlourLabel := self newLabel label: 'flour in sourdough'.
	sourdoughFlourInput := self newTextInput enabled: false.
	
	sourdoughWaterLabel := self newLabel label: 'water in sourdough'.
	sourdoughWaterInput := self newTextInput enabled: false.
	
	apparentHydrationLevelLabel := self newLabel label: 'apparent dough hydration rate'.
	apparentHydrationLevelInput := self newTextInput enabled: false.
	
	totalFlourLabel := self newLabel label: 'total amount of flour in the dough'.
	totalFlourInput := self newTextInput enabled: false.
	
	totalWaterWeightLabel := self newLabel label: 'total amount of water in the dough'.
	totalWaterWeightInput := self newTextInput enabled: false.

]

{ #category : #'instance creation' }
SourdoughInformationPresenter >> open [
<script: 'self new openWithSpec'>
]

{ #category : #accessing }
SourdoughInformationPresenter >> sourdoughFlourInput [
	^ sourdoughFlourInput
]

{ #category : #accessing }
SourdoughInformationPresenter >> sourdoughFlourInput: anObject [
	sourdoughFlourInput := anObject
]

{ #category : #accessing }
SourdoughInformationPresenter >> sourdoughFlourLabel [
	^ sourdoughFlourLabel
]

{ #category : #accessing }
SourdoughInformationPresenter >> sourdoughFlourLabel: anObject [
	sourdoughFlourLabel := anObject
]

{ #category : #accessing }
SourdoughInformationPresenter >> sourdoughWaterInput [
	^ sourdoughWaterInput
]

{ #category : #accessing }
SourdoughInformationPresenter >> sourdoughWaterInput: anObject [
	sourdoughWaterInput := anObject
]

{ #category : #accessing }
SourdoughInformationPresenter >> sourdoughWaterLabel [
	^ sourdoughWaterLabel
]

{ #category : #accessing }
SourdoughInformationPresenter >> sourdoughWaterLabel: anObject [
	sourdoughWaterLabel := anObject
]

{ #category : #accessing }
SourdoughInformationPresenter >> totalFlourInput [
	^ totalFlourInput
]

{ #category : #accessing }
SourdoughInformationPresenter >> totalFlourInput: anObject [
	totalFlourInput := anObject
]

{ #category : #accessing }
SourdoughInformationPresenter >> totalFlourLabel [
	^ totalFlourLabel
]

{ #category : #accessing }
SourdoughInformationPresenter >> totalFlourLabel: anObject [
	totalFlourLabel := anObject
]

{ #category : #accessing }
SourdoughInformationPresenter >> totalWaterWeightInput [
	^ totalWaterWeightInput
]

{ #category : #accessing }
SourdoughInformationPresenter >> totalWaterWeightInput: anObject [
	totalWaterWeightInput := anObject
]

{ #category : #accessing }
SourdoughInformationPresenter >> totalWaterWeightLabel [
	^ totalWaterWeightLabel
]

{ #category : #accessing }
SourdoughInformationPresenter >> totalWaterWeightLabel: anObject [
	totalWaterWeightLabel := anObject
]
