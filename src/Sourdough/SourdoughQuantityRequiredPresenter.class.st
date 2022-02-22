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

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> addedQuantityLabel [
	^ addedQuantityLabel
]

{ #category : #accessing }
SourdoughQuantityRequiredPresenter >> addedQuantityLabel: anObject [
	addedQuantityLabel := anObject
]

{ #category : #layout }
SourdoughQuantityRequiredPresenter >> defaultLayout [
	^ SpBoxLayout newVertical spacing: 2;
		  add: (SpBoxLayout newHorizontal
				   add: addedQuantityLabel;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: pouringWaterLabel expand: true;
				   add: pouringWaterInput width: 50;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: sourdoughLabel expand: true;
				   add: sourdoughInput width: 50;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: saltOnPouringWaterLabel expand: true;
				   add: saltOnPouringWaterInput width: 50;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: saltOnTotalWaterLabel expand: true;
				   add: saltOnTotalWaterInput width: 50;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: totalDoughWeightLabel expand: true;
				   add: totalDoughWeightInput width: 50;
				   yourself);
		  yourself
]

{ #category : #initialization }
SourdoughQuantityRequiredPresenter >> initializePresenters [

	addedQuantityLabel := self newLabel
		                      label: 'quantity to be added (in grams)';
		                      addStyle: 'section'.

	pouringWaterLabel := self newLabel label: 'pouring water'.
	pouringWaterInput := self newTextInput
		                     enabled: false;
		                     addStyle: 'disabled'.

	sourdoughLabel := self newLabel label: 'sourdough'.
	sourdoughInput := self newTextInput
		                  enabled: false;
		                  addStyle: 'disabled'.

	saltOnPouringWaterLabel := self newLabel
		                           label: 'Minimum quantity of salt';
		                           help: '(on casting water)'.
	saltOnPouringWaterInput := self newTextInput
		                           enabled: false;
		                           addStyle: 'disabled'.

	saltOnTotalWaterLabel := self newLabel
		                         label: 'Minimum quantity of salt';
		                         help: '(on total water)'.
	saltOnTotalWaterInput := self newTextInput
		                         enabled: false;
		                         addStyle: 'disabled'.

	totalDoughWeightLabel := self newLabel
		                         label: 'total weight of the dough';
		                         help: '(without salt)'.
	totalDoughWeightInput := self newTextInput
		                         enabled: false;
		                         addStyle: 'disabled'.

	self layout: self layout
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

{ #category : #'instance creation' }
SourdoughQuantityRequiredPresenter >> start [

	<script: 'self new open'>
	
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
