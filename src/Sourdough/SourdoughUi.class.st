"
SourdoughUi open
"
Class {
	#name : #SourdoughUi,
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
SourdoughUi class >> defaultSpec [
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

{ #category : #'class initialization' }
SourdoughUi class >> initialize [
	WorldState desktopMenuPragmaKeyword: 'worldMenu'.
]

{ #category : #examples }
SourdoughUi class >> open [
	<example>
	^ self new openWithSpec 
]

{ #category : #'class initialization' }
SourdoughUi class >> worldMenu: aBuilder [
	<worldMenu>
	(aBuilder item: #Sourdough)
		order: 4.0;
		with: [ (aBuilder item: 'calculate')
				action: [ SourdoughUi  open ];
				parent: #Sourdough;
				icon: ThemeIcons current glamorousTable;
				order: 0;
				help: 'Launch sourdough UI'. ]
]

{ #category : #accessing }
SourdoughUi >> addedQuantityLabel [
	^ addedQuantityLabel
]

{ #category : #accessing }
SourdoughUi >> addedQuantityLabel: anObject [
	addedQuantityLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> apparentHydrationLevelInput [
	^ apparentHydrationLevelInput
]

{ #category : #accessing }
SourdoughUi >> apparentHydrationLevelInput: anObject [
	apparentHydrationLevelInput := anObject
]

{ #category : #accessing }
SourdoughUi >> apparentHydrationLevelLabel [
	^ apparentHydrationLevelLabel
]

{ #category : #accessing }
SourdoughUi >> apparentHydrationLevelLabel: anObject [
	apparentHydrationLevelLabel := anObject
]

{ #category : #initialization }
SourdoughUi >> connectPresenters [
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
SourdoughUi >> doughHydratationLevelInput [
	^ doughHydratationLevelInput
]

{ #category : #accessing }
SourdoughUi >> doughHydratationLevelInput: anObject [
	doughHydratationLevelInput := anObject
]

{ #category : #accessing }
SourdoughUi >> doughHydratationLevelLabel [
	^ doughHydratationLevelLabel
]

{ #category : #accessing }
SourdoughUi >> doughHydratationLevelLabel: anObject [
	doughHydratationLevelLabel := anObject
]

{ #category : #'model updates' }
SourdoughUi >> fillFormWithWorkingModel [
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
SourdoughUi >> flourInput [
	^ flourInput
]

{ #category : #accessing }
SourdoughUi >> flourInput: anObject [
	flourInput := anObject
]

{ #category : #accessing }
SourdoughUi >> flourLabel [
	^ flourLabel
]

{ #category : #accessing }
SourdoughUi >> flourLabel: anObject [
	flourLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> informationLabel [
	^ informationLabel
]

{ #category : #accessing }
SourdoughUi >> informationLabel: anObject [
	informationLabel := anObject
]

{ #category : #widgets }
SourdoughUi >> informationWidgets [
	
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
SourdoughUi >> initialize [
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
SourdoughUi >> initializePresenters [

	requiredQuantityLabel := self newLabel label: 'quantity required (in grams)'; emphasis: #bold.
	addedQuantityLabel := self newLabel label: 'quantity to be added (in grams)'; emphasis: #bold.
	informationLabel := self newLabel label: 'additional information'; emphasis: #bold.
	
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
SourdoughUi >> initializeWindow: aWindowPresenter [
	aWindowPresenter
		title: 'calculator for sourdough bread';
		initialExtent: 600@390;
		windowIcon: self windowIcon;
		askOkToClose: false;
		aboutText: 'Small tool to calculate proportion of sourdough'
]

{ #category : #api }
SourdoughUi >> modelChanged [
	self fillFormWithWorkingModel
]

{ #category : #accessing }
SourdoughUi >> pouringWaterInput [
	^ pouringWaterInput
]

{ #category : #accessing }
SourdoughUi >> pouringWaterInput: anObject [
	pouringWaterInput := anObject
]

{ #category : #accessing }
SourdoughUi >> pouringWaterLabel [
	^ pouringWaterLabel
]

{ #category : #accessing }
SourdoughUi >> pouringWaterLabel: anObject [
	pouringWaterLabel := anObject
]

{ #category : #widgets }
SourdoughUi >> quantityAddedWidgets [
	
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
SourdoughUi >> quantityWishedWidgets [
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
SourdoughUi >> requiredQuantityLabel [
	^ requiredQuantityLabel
]

{ #category : #accessing }
SourdoughUi >> requiredQuantityLabel: anObject [
	requiredQuantityLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> saltOnPouringWaterInput [
	^ saltOnPouringWaterInput
]

{ #category : #accessing }
SourdoughUi >> saltOnPouringWaterInput: anObject [
	saltOnPouringWaterInput := anObject
]

{ #category : #accessing }
SourdoughUi >> saltOnPouringWaterLabel [
	^ saltOnPouringWaterLabel
]

{ #category : #accessing }
SourdoughUi >> saltOnPouringWaterLabel: anObject [
	saltOnPouringWaterLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> saltOnTotalWaterInput [
	^ saltOnTotalWaterInput
]

{ #category : #accessing }
SourdoughUi >> saltOnTotalWaterInput: anObject [
	saltOnTotalWaterInput := anObject
]

{ #category : #accessing }
SourdoughUi >> saltOnTotalWaterLabel [
	^ saltOnTotalWaterLabel
]

{ #category : #accessing }
SourdoughUi >> saltOnTotalWaterLabel: anObject [
	saltOnTotalWaterLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> saltRateInput [
	^ saltRateInput
]

{ #category : #accessing }
SourdoughUi >> saltRateInput: anObject [
	saltRateInput := anObject
]

{ #category : #accessing }
SourdoughUi >> saltRateLabel [
	^ saltRateLabel
]

{ #category : #accessing }
SourdoughUi >> saltRateLabel: anObject [
	saltRateLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughFlourInput [
	^ sourdoughFlourInput
]

{ #category : #accessing }
SourdoughUi >> sourdoughFlourInput: anObject [
	sourdoughFlourInput := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughFlourLabel [
	^ sourdoughFlourLabel
]

{ #category : #accessing }
SourdoughUi >> sourdoughFlourLabel: anObject [
	sourdoughFlourLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughFlourRateInput [
	^ sourdoughFlourRateInput
]

{ #category : #accessing }
SourdoughUi >> sourdoughFlourRateInput: anObject [
	sourdoughFlourRateInput := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughFlourRateLabel [
	^ sourdoughFlourRateLabel
]

{ #category : #accessing }
SourdoughUi >> sourdoughFlourRateLabel: anObject [
	sourdoughFlourRateLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughHydrationLevelInput [
	^ sourdoughHydrationLevelInput
]

{ #category : #accessing }
SourdoughUi >> sourdoughHydrationLevelInput: anObject [
	sourdoughHydrationLevelInput := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughHydrationLevelLabel [
	^ sourdoughHydrationLevelLabel
]

{ #category : #accessing }
SourdoughUi >> sourdoughHydrationLevelLabel: anObject [
	sourdoughHydrationLevelLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughInput [
	^ sourdoughInput
]

{ #category : #accessing }
SourdoughUi >> sourdoughInput: anObject [
	sourdoughInput := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughLabel [
	^ sourdoughLabel
]

{ #category : #accessing }
SourdoughUi >> sourdoughLabel: anObject [
	sourdoughLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughWaterInput [
	^ sourdoughWaterInput
]

{ #category : #accessing }
SourdoughUi >> sourdoughWaterInput: anObject [
	sourdoughWaterInput := anObject
]

{ #category : #accessing }
SourdoughUi >> sourdoughWaterLabel [
	^ sourdoughWaterLabel
]

{ #category : #accessing }
SourdoughUi >> sourdoughWaterLabel: anObject [
	sourdoughWaterLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> totalDoughWeightInput [
	^ totalDoughWeightInput
]

{ #category : #accessing }
SourdoughUi >> totalDoughWeightInput: anObject [
	totalDoughWeightInput := anObject
]

{ #category : #accessing }
SourdoughUi >> totalDoughWeightLabel [
	^ totalDoughWeightLabel
]

{ #category : #accessing }
SourdoughUi >> totalDoughWeightLabel: anObject [
	totalDoughWeightLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> totalFlourInput [
	^ totalFlourInput
]

{ #category : #accessing }
SourdoughUi >> totalFlourInput: anObject [
	totalFlourInput := anObject
]

{ #category : #accessing }
SourdoughUi >> totalFlourLabel [
	^ totalFlourLabel
]

{ #category : #accessing }
SourdoughUi >> totalFlourLabel: anObject [
	totalFlourLabel := anObject
]

{ #category : #accessing }
SourdoughUi >> totalWaterWeightInput [
	^ totalWaterWeightInput
]

{ #category : #accessing }
SourdoughUi >> totalWaterWeightInput: anObject [
	totalWaterWeightInput := anObject
]

{ #category : #accessing }
SourdoughUi >> totalWaterWeightLabel [
	^ totalWaterWeightLabel
]

{ #category : #accessing }
SourdoughUi >> totalWaterWeightLabel: anObject [
	totalWaterWeightLabel := anObject
]
