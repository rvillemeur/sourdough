"
SourdoughUi open
"
Class {
	#name : #SourdoughPresenter,
	#superclass : #SpPresenterWithModel,
	#instVars : [
		'requiredQuantityLabel',
		'addedQuantityLabel',
		'informationLabel',
		'flourLabel',
		'flourInput',
		'doughHydratationLevelLabel',
		'doughHydratationLevelInput',
		'saltRateLabel',
		'saltRateInput',
		'sourdoughHydrationLevelLabel',
		'sourdoughHydrationLevelInput',
		'sourdoughFlourRateLabel',
		'sourdoughFlourRateInput',
		'apparentHydrationLevelLabel',
		'apparentHydrationLevelInput',
		'pouringWaterLabel',
		'pouringWaterInput',
		'saltOnPouringWaterLabel',
		'saltOnPouringWaterInput',
		'saltOnTotalWaterLabel',
		'saltOnTotalWaterInput',
		'sourdoughLabel',
		'sourdoughInput',
		'sourdoughFlourLabel',
		'sourdoughFlourInput',
		'sourdoughWaterLabel',
		'sourdoughWaterInput',
		'totalDoughWeightLabel',
		'totalDoughWeightInput',
		'totalFlourLabel',
		'totalFlourInput',
		'totalWaterWeightLabel',
		'totalWaterWeightInput'
	],
	#category : #'Sourdough-UI'
}

{ #category : #specs }
SourdoughPresenter class >> defaultSpec [
	^ SpBoxLayout newVertical
		add:
			(SpBoxLayout newHorizontal
				add:
					(SpGridLayout new beColumnNotHomogeneous; beRowHomogeneous;
						column: 1 withConstraints: [ :c | c beExpand ];
						column: 2 withConstraints: [ :c | c beNotExpand  ];
						add: #requiredQuantityLabel at: 1 @ 1 span: 2 @ 1;
						add: #flourLabel at: 1 @ 2;
						add: #flourInput at: 2 @ 2;
						add: #doughHydratationLevelLabel at: 1 @ 3;
						add: #doughHydratationLevelInput at: 2 @ 3;
						add: #saltRateLabel at: 1 @ 4;
						add: #saltRateInput at: 2 @ 4;
						add: #sourdoughHydrationLevelLabel at: 1 @ 5;
						add: #sourdoughHydrationLevelInput at: 2 @ 5;
						add: #sourdoughFlourRateLabel at: 1 @ 6;
						add: #sourdoughFlourRateInput at: 2 @ 6;
						yourself);
				add:
					(SpGridLayout new beColumnNotHomogeneous; beRowHomogeneous; 
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
						yourself);
				yourself);
		add:
			(SpGridLayout new beRowHomogeneous
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
				yourself)
			expand: true;
		yourself
]

{ #category : #examples }
SourdoughPresenter class >> open [
	<example>
	^ self new openWithSpec 
]

{ #category : #accessing }
SourdoughPresenter >> addedQuantityLabel [
	^ addedQuantityLabel
]

{ #category : #accessing }
SourdoughPresenter >> addedQuantityLabel: anObject [
	addedQuantityLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> apparentHydrationLevelInput [
	^ apparentHydrationLevelInput
]

{ #category : #accessing }
SourdoughPresenter >> apparentHydrationLevelInput: anObject [
	apparentHydrationLevelInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> apparentHydrationLevelLabel [
	^ apparentHydrationLevelLabel
]

{ #category : #accessing }
SourdoughPresenter >> apparentHydrationLevelLabel: anObject [
	apparentHydrationLevelLabel := anObject
]

{ #category : #initialization }
SourdoughPresenter >> connectPresenters [
	self flourInput
		whenTextChangedDo: [ self model flour: self flourInput text asInteger.
			self announcingObject valueChanged ].
	self doughHydratationLevelInput
		whenTextChangedDo: [ self model
				doughHydrationLevel: self doughHydratationLevelInput text asInteger percent.
			self announcingObject valueChanged ].
	self saltRateInput
		whenTextChangedDo: [ self model saltRate: self saltRateInput text asInteger percent.
			self announcingObject valueChanged ].
	self sourdoughHydrationLevelInput
		whenTextChangedDo: [ self model
				sourdoughHydrationLevel: self sourdoughHydrationLevelInput text asInteger percent.
			self announcingObject valueChanged ].
	self sourdoughFlourRateInput
		whenTextChangedDo: [ self model
				sourdoughFlourRate: self sourdoughFlourRateInput text asInteger percent.
			self announcingObject valueChanged ]
]

{ #category : #accessing }
SourdoughPresenter >> doughHydratationLevelInput [
	^ doughHydratationLevelInput
]

{ #category : #accessing }
SourdoughPresenter >> doughHydratationLevelInput: anObject [
	doughHydratationLevelInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> doughHydratationLevelLabel [
	^ doughHydratationLevelLabel
]

{ #category : #accessing }
SourdoughPresenter >> doughHydratationLevelLabel: anObject [
	doughHydratationLevelLabel := anObject
]

{ #category : #'model updates' }
SourdoughPresenter >> fillFormWithWorkingModel [
	self apparentHydrationLevelInput
		text: (self model apparentHydrationLevel * 100) printString.
	self pouringWaterInput text: self model pouringWater printString.
	self saltOnPouringWaterInput
		text: self model saltOnPouringWater printString.
	self saltOnTotalWaterInput
		text: self model saltOnTotalWater printString.
	self sourdoughInput text: self model sourdough printString.
	self sourdoughFlourInput text: self model sourdoughFlour printString.
	self sourdoughWaterInput text: self model sourdoughWater printString.
	self totalDoughWeightInput
		text: self model totalDoughWeight printString.
	self totalFlourInput text: self model totalFlour printString.
	self totalWaterWeightInput
		text: self model totalWaterWeight printString
]

{ #category : #accessing }
SourdoughPresenter >> flourInput [
	^ flourInput
]

{ #category : #accessing }
SourdoughPresenter >> flourInput: anObject [
	flourInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> flourLabel [
	^ flourLabel
]

{ #category : #accessing }
SourdoughPresenter >> flourLabel: anObject [
	flourLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> informationLabel [
	^ informationLabel
]

{ #category : #accessing }
SourdoughPresenter >> informationLabel: anObject [
	informationLabel := anObject
]

{ #category : #widgets }
SourdoughPresenter >> informationWidgets [
	
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

{ #category : #initialization }
SourdoughPresenter >> initialize [
	self
		model:
			(SourdoughModel
				flour: 500
				doughHydrationLevel: 0.6
				saltRate: 0.03
				sourdoughHydrationLevel: 0.6
				sourdoughFlourRate: 0.5).
	super initialize
]

{ #category : #initialization }
SourdoughPresenter >> initializePresenters [
	requiredQuantityLabel := self newLabel label: 'quantity required (in grams)'; addStyle: 'section'.
	addedQuantityLabel := self newLabel label: 'quantity to be added (in grams)'; addStyle: 'section'.
	informationLabel := self newLabel label: 'additional information'; addStyle: 'section'.
	
	self quantityWishedWidgets.
	self quantityAddedWidgets.
	self informationWidgets.

	self focusOrder
		add: flourInput;
		add: doughHydratationLevelInput;
		add: saltRateInput;
		add: sourdoughHydrationLevelInput;
		add: sourdoughFlourRateInput.
]

{ #category : #initialization }
SourdoughPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter
		title: 'calculator for sourdough bread';
		initialExtent: 600@390;
		windowIcon: self windowIcon;
		askOkToClose: false;
		aboutText: 'Small tool to calculate proportion of sourdough'
]

{ #category : #api }
SourdoughPresenter >> modelChanged [
	self fillFormWithWorkingModel
]

{ #category : #'instance creation' }
SourdoughPresenter >> open [
<script: 'self new openWithSpec'>
]

{ #category : #accessing }
SourdoughPresenter >> pouringWaterInput [
	^ pouringWaterInput
]

{ #category : #accessing }
SourdoughPresenter >> pouringWaterInput: anObject [
	pouringWaterInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> pouringWaterLabel [
	^ pouringWaterLabel
]

{ #category : #accessing }
SourdoughPresenter >> pouringWaterLabel: anObject [
	pouringWaterLabel := anObject
]

{ #category : #widgets }
SourdoughPresenter >> quantityAddedWidgets [
	
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

{ #category : #widgets }
SourdoughPresenter >> quantityWishedWidgets [
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
		placeholder: '50'
]

{ #category : #accessing }
SourdoughPresenter >> requiredQuantityLabel [
	^ requiredQuantityLabel
]

{ #category : #accessing }
SourdoughPresenter >> requiredQuantityLabel: anObject [
	requiredQuantityLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> saltOnPouringWaterInput [
	^ saltOnPouringWaterInput
]

{ #category : #accessing }
SourdoughPresenter >> saltOnPouringWaterInput: anObject [
	saltOnPouringWaterInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> saltOnPouringWaterLabel [
	^ saltOnPouringWaterLabel
]

{ #category : #accessing }
SourdoughPresenter >> saltOnPouringWaterLabel: anObject [
	saltOnPouringWaterLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> saltOnTotalWaterInput [
	^ saltOnTotalWaterInput
]

{ #category : #accessing }
SourdoughPresenter >> saltOnTotalWaterInput: anObject [
	saltOnTotalWaterInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> saltOnTotalWaterLabel [
	^ saltOnTotalWaterLabel
]

{ #category : #accessing }
SourdoughPresenter >> saltOnTotalWaterLabel: anObject [
	saltOnTotalWaterLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> saltRateInput [
	^ saltRateInput
]

{ #category : #accessing }
SourdoughPresenter >> saltRateInput: anObject [
	saltRateInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> saltRateLabel [
	^ saltRateLabel
]

{ #category : #accessing }
SourdoughPresenter >> saltRateLabel: anObject [
	saltRateLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughFlourInput [
	^ sourdoughFlourInput
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughFlourInput: anObject [
	sourdoughFlourInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughFlourLabel [
	^ sourdoughFlourLabel
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughFlourLabel: anObject [
	sourdoughFlourLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughFlourRateInput [
	^ sourdoughFlourRateInput
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughFlourRateInput: anObject [
	sourdoughFlourRateInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughFlourRateLabel [
	^ sourdoughFlourRateLabel
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughFlourRateLabel: anObject [
	sourdoughFlourRateLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughHydrationLevelInput [
	^ sourdoughHydrationLevelInput
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughHydrationLevelInput: anObject [
	sourdoughHydrationLevelInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughHydrationLevelLabel [
	^ sourdoughHydrationLevelLabel
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughHydrationLevelLabel: anObject [
	sourdoughHydrationLevelLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughInput [
	^ sourdoughInput
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughInput: anObject [
	sourdoughInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughLabel [
	^ sourdoughLabel
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughLabel: anObject [
	sourdoughLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughWaterInput [
	^ sourdoughWaterInput
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughWaterInput: anObject [
	sourdoughWaterInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughWaterLabel [
	^ sourdoughWaterLabel
]

{ #category : #accessing }
SourdoughPresenter >> sourdoughWaterLabel: anObject [
	sourdoughWaterLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> totalDoughWeightInput [
	^ totalDoughWeightInput
]

{ #category : #accessing }
SourdoughPresenter >> totalDoughWeightInput: anObject [
	totalDoughWeightInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> totalDoughWeightLabel [
	^ totalDoughWeightLabel
]

{ #category : #accessing }
SourdoughPresenter >> totalDoughWeightLabel: anObject [
	totalDoughWeightLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> totalFlourInput [
	^ totalFlourInput
]

{ #category : #accessing }
SourdoughPresenter >> totalFlourInput: anObject [
	totalFlourInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> totalFlourLabel [
	^ totalFlourLabel
]

{ #category : #accessing }
SourdoughPresenter >> totalFlourLabel: anObject [
	totalFlourLabel := anObject
]

{ #category : #accessing }
SourdoughPresenter >> totalWaterWeightInput [
	^ totalWaterWeightInput
]

{ #category : #accessing }
SourdoughPresenter >> totalWaterWeightInput: anObject [
	totalWaterWeightInput := anObject
]

{ #category : #accessing }
SourdoughPresenter >> totalWaterWeightLabel [
	^ totalWaterWeightLabel
]

{ #category : #accessing }
SourdoughPresenter >> totalWaterWeightLabel: anObject [
	totalWaterWeightLabel := anObject
]
