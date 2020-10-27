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

{ #category : #specs }
SourdoughQuantityWishedPresenter class >> defaultSpec [

	^ SpGridLayout new
		  beColumnNotHomogeneous;
		  beRowHomogeneous;
		  column: 1 withConstraints: [ :c | c beExpand ];
		  column: 2 withConstraints: [ :c | c beNotExpand ];
		  add: #requiredQuantityLabel at: 1 @ 1 span: 2 @ 1;
		  add: 'flour quantity' at: 1 @ 2;
		  add: #flourInput at: 2 @ 2;
		  add: #doughHydratationLevelLabel at: 1 @ 3;
		  add: #doughHydratationLevelInput at: 2 @ 3;
		  add: #saltRateLabel at: 1 @ 4;
		  add: #saltRateInput at: 2 @ 4;
		  add: #sourdoughHydrationLevelLabel at: 1 @ 5;
		  add: #sourdoughHydrationLevelInput at: 2 @ 5;
		  add: #sourdoughFlourRateLabel at: 1 @ 6;
		  add: #sourdoughFlourRateInput at: 2 @ 6;
		  yourself
]

{ #category : #examples }
SourdoughQuantityWishedPresenter class >> open [
	<example>
	^ self new openWithSpec 
]

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
