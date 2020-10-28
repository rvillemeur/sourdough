Class {
	#name : #SourdoughQuantityWishedPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'requiredQuantityLabel',
		'flourLabel',
		'flourInput',
		'doughHydratationLevelLabel',
		'doughHydratationLevelInput',
		'saltRateLabel',
		'saltRateInput',
		'sourdoughHydrationLevelLabel',
		'sourdoughHydrationLevelInput',
		'sourdoughFlourRateLabel',
		'sourdoughFlourRateInput'
	],
	#category : #'Sourdough-UI'
}

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> doughHydratationLevelInput [
	^ doughHydratationLevelInput
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> doughHydratationLevelInput: anObject [
	doughHydratationLevelInput := anObject
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> doughHydratationLevelLabel [
	^ doughHydratationLevelLabel
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> doughHydratationLevelLabel: anObject [
	doughHydratationLevelLabel := anObject
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> flourInput [
	^ flourInput
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> flourInput: anObject [
	flourInput := anObject
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> flourLabel [
	^ flourLabel
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> flourLabel: anObject [
	flourLabel := anObject
]

{ #category : #initialization }
SourdoughQuantityWishedPresenter >> initializePresenters [
	requiredQuantityLabel := self newLabel label: 'quantity required (in grams)'; addStyle: 'section'.

	flourLabel := self newLabel label: 'flour quantity'.
	flourInput := self newTextInput
		autoAccept: true;
		placeholder: '500'.
	doughHydratationLevelLabel := self newLabel
		label: 'desired hydration level';
		help: 'for the dough (%)'.
	doughHydratationLevelInput := self newTextInput
		autoAccept: true;
		placeholder: '60'.
	saltRateLabel := self newLabel
		label: 'proportion of salt';
		help: '(between 2 and 3.5% of the weight of the casting water)'.
	saltRateInput := self newTextInput
		autoAccept: true;
		placeholder: '3'.
	sourdoughHydrationLevelLabel := self newLabel
		label: 'hydration level';
		help: 'of your sourdough (%)'.
	sourdoughHydrationLevelInput := self newTextInput
		autoAccept: true;
		placeholder: '60'.
	sourdoughFlourRateLabel := self newLabel
		label: 'Proportion of sourdough';
		help: '(in % of flour weight)'.
	sourdoughFlourRateInput := self newTextInput
		autoAccept: true;
		placeholder: '50'.

	self focusOrder
		add: flourInput;
		add: doughHydratationLevelInput;
		add: saltRateInput;
		add: sourdoughHydrationLevelInput;
		add: sourdoughFlourRateInput.
		
	self layout: self layout.
		

]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> layout [

	^ SpBoxLayout newVertical
		  add: (SpBoxLayout newHorizontal
				   add: #requiredQuantityLabel;
				   yourself)
		  height: 25;
		  add: (SpBoxLayout newHorizontal
				   add: #flourLabel expand: true;
				   add: #flourInput width: 50;
				   yourself)
		  height: 25;
		  add: (SpBoxLayout newHorizontal
				   add: #doughHydratationLevelLabel expand: true;
				   add: #doughHydratationLevelInput width: 50;
				   yourself)
		  height: 25;
		  add: (SpBoxLayout newHorizontal
				   add: #saltRateLabel expand: true;
				   add: #saltRateInput width: 50;
				   yourself)
		  height: 25;
		  add: (SpBoxLayout newHorizontal
				   add: #sourdoughHydrationLevelLabel expand: true;
				   add: #sourdoughHydrationLevelInput width: 50;
				   yourself)
		  height: 25;
		  add: (SpBoxLayout newHorizontal
				   add: #sourdoughFlourRateLabel expand: true;
				   add: #sourdoughFlourRateInput width: 50;
				   yourself)
		  height: 25;
		  yourself
]

{ #category : #'instance creation' }
SourdoughQuantityWishedPresenter >> open [
<script: 'self new openWithSpec'>
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> requiredQuantityLabel [
	^ requiredQuantityLabel
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> requiredQuantityLabel: anObject [
	requiredQuantityLabel := anObject
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> saltRateInput [
	^ saltRateInput
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> saltRateInput: anObject [
	saltRateInput := anObject
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> saltRateLabel [
	^ saltRateLabel
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> saltRateLabel: anObject [
	saltRateLabel := anObject
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> sourdoughFlourRateInput [
	^ sourdoughFlourRateInput
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> sourdoughFlourRateInput: anObject [
	sourdoughFlourRateInput := anObject
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> sourdoughFlourRateLabel [
	^ sourdoughFlourRateLabel
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> sourdoughFlourRateLabel: anObject [
	sourdoughFlourRateLabel := anObject
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> sourdoughHydrationLevelInput [
	^ sourdoughHydrationLevelInput
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> sourdoughHydrationLevelInput: anObject [
	sourdoughHydrationLevelInput := anObject
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> sourdoughHydrationLevelLabel [
	^ sourdoughHydrationLevelLabel
]

{ #category : #accessing }
SourdoughQuantityWishedPresenter >> sourdoughHydrationLevelLabel: anObject [
	sourdoughHydrationLevelLabel := anObject
]
