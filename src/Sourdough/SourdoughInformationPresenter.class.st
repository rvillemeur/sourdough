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

{ #category : #layout }
SourdoughInformationPresenter >> defaultLayout [ 
^
SpBoxLayout newVertical spacing: 2;
		  add: (SpBoxLayout newHorizontal
				   add: informationLabel;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: apparentHydrationLevelLabel expand: true;
				   add: apparentHydrationLevelInput width: 50;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: totalWaterWeightLabel expand: true;
				   add: totalWaterWeightInput width: 50;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: totalFlourLabel expand: true;
				   add: totalFlourInput width: 50;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: sourdoughWaterLabel expand: true;
				   add: sourdoughWaterInput width: 50;
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   add: sourdoughFlourLabel expand: true;
				   add: sourdoughFlourInput width: 50;
				   yourself);
		  yourself
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

	informationLabel := self newLabel
		                    label: 'additional information';
		                    addStyle: 'section'.

	sourdoughFlourLabel := self newLabel label: 'flour in sourdough'.
	sourdoughFlourInput := self newTextInput
		                       enabled: false;
		                       addStyle: 'disabled'.

	sourdoughWaterLabel := self newLabel label: 'water in sourdough'.
	sourdoughWaterInput := self newTextInput
		                       enabled: false;
		                       addStyle: 'disabled'.

	apparentHydrationLevelLabel := self newLabel label:
		                               'apparent dough hydration rate'.
	apparentHydrationLevelInput := self newTextInput
		                               enabled: false;
		                               addStyle: 'disabled'.

	totalFlourLabel := self newLabel label:
		                   'total amount of flour in the dough'.
	totalFlourInput := self newTextInput
		                   enabled: false;
		                   addStyle: 'disabled'.

	totalWaterWeightLabel := self newLabel label:
		                         'total amount of water in the dough'.
	totalWaterWeightInput := self newTextInput
		                         enabled: false;
		                         addStyle: 'disabled'.

	self layout: self layout
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

{ #category : #'instance creation' }
SourdoughInformationPresenter >> start [

	<script: 'self new open'>
	
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
