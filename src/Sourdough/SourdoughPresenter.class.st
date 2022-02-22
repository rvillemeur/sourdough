"
SourdoughUi open
"
Class {
	#name : #SourdoughPresenter,
	#superclass : #SpPresenterWithModel,
	#instVars : [
		'requiredQuantity',
		'wishedQuantity',
		'information'
	],
	#category : #'Sourdough-UI'
}

{ #category : #initialization }
SourdoughPresenter >> connectPresenters [
	wishedQuantity flourInput
		whenTextChangedDo: [ self model flour: wishedQuantity flourInput text asInteger.
			self announcingObject valueChanged ].
	wishedQuantity doughHydratationLevelInput
		whenTextChangedDo: [ self model
				doughHydrationLevel: wishedQuantity doughHydratationLevelInput text asInteger percent.
			self announcingObject valueChanged ].
	wishedQuantity saltRateInput
		whenTextChangedDo: [ self model saltRate: wishedQuantity saltRateInput text asInteger percent.
			self announcingObject valueChanged ].
	wishedQuantity sourdoughHydrationLevelInput
		whenTextChangedDo: [ self model
				sourdoughHydrationLevel: wishedQuantity sourdoughHydrationLevelInput text asInteger percent.
			self announcingObject valueChanged ].
	wishedQuantity sourdoughFlourRateInput
		whenTextChangedDo: [ self model
				sourdoughFlourRate: wishedQuantity sourdoughFlourRateInput text asInteger percent.
			self announcingObject valueChanged ]
]

{ #category : #layout }
SourdoughPresenter >> defaultLayout [ 

	^ SpBoxLayout newVertical
		  add: (SpBoxLayout newHorizontal spacing: 5;
				   add: wishedQuantity;
				   add: requiredQuantity;
				   yourself)  expand: true;
		  add: information expand: true;
		  yourself
]

{ #category : #'model updates' }
SourdoughPresenter >> fillFormWithWorkingModel [

	requiredQuantity totalDoughWeightInput text:
		self model totalDoughWeight printString.
	requiredQuantity pouringWaterInput text:
		self model pouringWater printString.
	requiredQuantity saltOnPouringWaterInput text:
		self model saltOnPouringWater printString.
	requiredQuantity saltOnTotalWaterInput text:
		self model saltOnTotalWater printString.
	requiredQuantity sourdoughInput text:
		self model sourdough printString.

	information apparentHydrationLevelInput text:
		(self model apparentHydrationLevel * 100) printString.
	information sourdoughFlourInput text:
		self model sourdoughFlour printString.
	information sourdoughWaterInput text:
		self model sourdoughWater printString.
	information totalFlourInput text:
		self model totalFlour printString.
	information totalWaterWeightInput text:
		self model totalWaterWeight printString
]

{ #category : #accessing }
SourdoughPresenter >> height [

	^ 390
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

	requiredQuantity := self instantiate:
		                    SourdoughQuantityRequiredPresenter.
	wishedQuantity := self instantiate: SourdoughQuantityWishedPresenter.
	information := self instantiate: SourdoughInformationPresenter.
	self layout: self layout
]

{ #category : #initialization }
SourdoughPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter
		title: 'calculator for sourdough bread';
		initialExtent: (self width)@(self height);
		windowIcon: self windowIcon;
		askOkToClose: false;
		aboutText: 'Small tool to calculate proportion of sourdough'
]

{ #category : #api }
SourdoughPresenter >> modelChanged [
	self fillFormWithWorkingModel
]

{ #category : #'instance creation' }
SourdoughPresenter >> start [

	<script: 'self new open'>
	
]

{ #category : #accessing }
SourdoughPresenter >> width [

	^ 600
]
