"
SourdoughUi open
"
Class {
	#name : #SourdoughUi,
	#superclass : #ComposablePresenterWithModel,
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
"implementation with row and columns, the final layout is difficult to obtain"
	| fontWidth rowHeight inputWidth |
	fontWidth := StandardFonts defaultFont widthOfString: 'M'.
	inputWidth := fontWidth * 3 + 5.
	rowHeight := ComposablePresenter inputTextHeight.
	^ SpecColumnLayout composed
		newColumn: [ :col | 
			"top label"
			col
				newRow: [ :row | 
					row
						add: #requiredQuantityLabel;
						add: #addedQuantityLabel ] height: rowHeight.

			"values entered by the user"
			col
				newRow: [ :row | 
					row
						add: #flourLabel;
						add: #flourInput width: inputWidth;
						add: #pouringWaterLabel;
						add: #pouringWaterInput width: inputWidth ] 	
					height: rowHeight.
			col
				newRow: [ :row | 
					row
						add: #doughHydratationLevelLabel;
						add: #doughHydratationLevelInput width: inputWidth;
						add: #sourdoughLabel;
						add: #sourdoughInput width: inputWidth ]
					height: rowHeight.
			col
				newRow: [ :row | 
					row
						add: #saltRateLabel;
						add: #saltRateInput width: inputWidth;
						add: #saltOnPouringWaterLabel;
						add: #saltOnPouringWaterInput width: inputWidth]
					height: rowHeight.
			col
				newRow: [ :row | 
					row
						add: #sourdoughHydrationLevelLabel;
						add: #sourdoughHydrationLevelInput width: inputWidth;
						add: #saltOnTotalWaterLabel;
						add: #saltOnTotalWaterInput width: inputWidth]
					height: rowHeight.
					
			col
				newRow: [ :row | 
					row
						add: #sourdoughFlourRateLabel;
						add: #sourdoughFlourRateInput width: inputWidth;
						add: #totalDoughWeightLabel;
						add: #totalDoughWeightInput width: inputWidth ]
					height: rowHeight.
					
				
				
			col newRow: [ :row | row add: #informationLabel ] height: rowHeight.
			col
				newRow: [ :row | 
					row
						add: #apparentHydrationLevelLabel;
						add: #apparentHydrationLevelInput width: inputWidth ]
				height: rowHeight.
			col
				newRow: [ :row | 
					row
						add: #totalWaterWeightLabel;
						add: #totalWaterWeightInput width: inputWidth ]
				height: rowHeight.
			col
				newRow: [ :row | 
					row
						add: #totalFlourLabel;
						add: #totalFlourInput width: inputWidth ]
				height: rowHeight.
			col
				newRow: [ :row | 
					row
						add: #sourdoughWaterLabel;
						add: #sourdoughWaterInput width: inputWidth ]
				height: rowHeight.
			col
				newRow: [ :row | 
					row
						add: #sourdoughFlourLabel;
						add: #sourdoughFlourInput width: inputWidth ]
				height: rowHeight ] ;
		yourself
]

{ #category : #specs }
SourdoughUi class >> defaultSpec2 [

	| spLayout |
	spLayout := SpecTableLayout new.

	spLayout
		newRow: [ :row | row
				newColumn: [ :col | 
					col newRow: [ :inRow | inRow add: #requiredQuantityLabel ].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #flourLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #flourInput ] ]].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #doughHydratationLevelLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #doughHydratationLevelInput ] ]].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #saltRateLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #saltRateInput ] ] ].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #sourdoughHydrationLevelLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #sourdoughHydrationLevelInput ] ]].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #sourdoughFlourRateLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #sourdoughFlourRateInput ] ] ]
							];

			newColumn: [ :col | 
					col newRow: [ :inRow | inRow add: #addedQuantityLabel ].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #pouringWaterLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #pouringWaterInput ] ] ].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #sourdoughLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #sourdoughInput ] ] ].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #saltOnPouringWaterLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #saltOnPouringWaterInput ] ] ].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #saltOnTotalWaterLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #saltOnTotalWaterInput ] ] ].
					col
						newRow: [ :inRow | 
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #totalDoughWeightLabel ] ].
							inRow
								newColumn:
									[ :inCol | inCol newRow: [ :valRow | valRow add: #totalDoughWeightInput ] ] ]
							]].
 .
	spLayout
		newRow: [ :row | 
			row
				add: #informationLabel;
				"layoutInset: 200 @ 0;"
				cellInset: 6;
				listCentering: #center].
	spLayout
		newRow: [ :row | 
			row
				add: #apparentHydrationLevelLabel;
				add: #apparentHydrationLevelInput ].
	spLayout
		newRow: [ :row | 
			row
				add: #totalWaterWeightLabel;
				add: #totalWaterWeightInput ].
	spLayout
		newRow: [ :row | 
			row
				add: #totalFlourLabel;
				add: #totalFlourInput ].
	spLayout
		newRow: [ :row | 
			row
				add: #sourdoughWaterLabel;
				add: #sourdoughWaterInput ].
	spLayout
		newRow: [ :row | 
			row
				add: #sourdoughFlourLabel;
				add: #sourdoughFlourInput ].
	^ spLayout
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

{ #category : #api }
SourdoughUi >> extent [
^600@390
]

{ #category : #'model updates' }
SourdoughUi >> fillFormWithWorkingModel [
	self apparentHydrationLevelInput
		text: self model apparentHydrationLevel * 100.
	self pouringWaterInput text: self model pouringWater.
	self saltOnPouringWaterInput text: self model saltOnPouringWater.
	self saltOnTotalWaterInput text: self model saltOnTotalWater.
	self sourdoughInput text: self model sourdough.
	self sourdoughFlourInput text: self model sourdoughFlour.
	self sourdoughWaterInput text: self model sourdoughWater.
	self totalDoughWeightInput text: self model totalDoughWeight.
	self totalFlourInput text: self model totalFlour.
	self totalWaterWeightInput text: self model totalWaterWeight
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

{ #category : #api }
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
SourdoughUi >> initializePresenter [
	self flourInput
		whenTextChanged: [ self model flour: self flourInput text asInteger.
			self announcingObject valueChanged ].
	self doughHydratationLevelInput
		whenTextChanged:
			[ self model doughHydrationLevel: self doughHydratationLevelInput text asInteger percent .
			self announcingObject valueChanged ].
	self saltRateInput
		whenTextChanged: [ self model saltRate: self saltRateInput text asInteger percent.
			self announcingObject valueChanged ].
	self sourdoughHydrationLevelInput
		whenTextChanged: [ self model
				sourdoughHydrationLevel: self sourdoughHydrationLevelInput text asInteger percent.
			self announcingObject valueChanged ].
	self sourdoughFlourRateInput
		whenTextChanged: [ self model sourdoughFlourRate: self sourdoughFlourRateInput text asInteger percent.
			self announcingObject valueChanged ]
]

{ #category : #initialization }
SourdoughUi >> initializeWidgets [

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
	flourInput := self newTextInput autoAccept: true; ghostText: '500'.
	
	doughHydratationLevelLabel := self newLabel label: 'desired hydration level for the dough (%)'.
	doughHydratationLevelInput := self newTextInput autoAccept: true; ghostText: '60'.
	
	saltRateLabel := self newLabel label: 'proportion of salt'; help: '(between 2 and 3.5% of the weight of the casting water)'.
	saltRateInput := self newTextInput autoAccept: true; ghostText: '3'.
	
	sourdoughHydrationLevelLabel := self newLabel 	label: 'hydration level of your sourdough (%)'.
	sourdoughHydrationLevelInput := self newTextInput autoAccept: true; ghostText: '60'.
	
	sourdoughFlourRateLabel := self newLabel label: 'Proportion of sourdough';  help: '(in % of flour weight)'.
	sourdoughFlourRateInput := self newTextInput autoAccept: true; ghostText: '50'.
	
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

{ #category : #api }
SourdoughUi >> title [
	^ 'calculator for sourdough bread'
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
