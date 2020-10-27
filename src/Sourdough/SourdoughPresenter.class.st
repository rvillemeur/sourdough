"
SourdoughUi open
"
Class {
	#name : #SourdoughPresenter,
	#superclass : #SpPresenterWithModel,
	#instVars : [
		'requiredQuantityPresenter',
		'wishedQuantityPresenter',
		'informationPresenter'
	],
	#category : #'Sourdough-UI'
}

{ #category : #specs }
SourdoughPresenter class >> defaultSpec [

	^ SpBoxLayout
		  newVertical
		  add: (SpBoxLayout newHorizontal
				   add: #wishedQuantityPresenter;
				   add: #requiredQuantityPresenter;
				   yourself);
		  add: #informationPresenter; yourself
]

{ #category : #examples }
SourdoughPresenter class >> open [
	<example>
	^ self new openWithSpec 
]

{ #category : #initialization }
SourdoughPresenter >> connectPresenters [
	wishedQuantityPresenter flourInput
		whenTextChangedDo: [ self model flour: wishedQuantityPresenter flourInput text asInteger.
			self announcingObject valueChanged ].
	wishedQuantityPresenter doughHydratationLevelInput
		whenTextChangedDo: [ self model
				doughHydrationLevel: wishedQuantityPresenter doughHydratationLevelInput text asInteger percent.
			self announcingObject valueChanged ].
	wishedQuantityPresenter saltRateInput
		whenTextChangedDo: [ self model saltRate: wishedQuantityPresenter saltRateInput text asInteger percent.
			self announcingObject valueChanged ].
	wishedQuantityPresenter sourdoughHydrationLevelInput
		whenTextChangedDo: [ self model
				sourdoughHydrationLevel: wishedQuantityPresenter sourdoughHydrationLevelInput text asInteger percent.
			self announcingObject valueChanged ].
	wishedQuantityPresenter sourdoughFlourRateInput
		whenTextChangedDo: [ self model
				sourdoughFlourRate: wishedQuantityPresenter sourdoughFlourRateInput text asInteger percent.
			self announcingObject valueChanged ]
]

{ #category : #'model updates' }
SourdoughPresenter >> fillFormWithWorkingModel [

	requiredQuantityPresenter totalDoughWeightInput text:
		self model totalDoughWeight printString.
	requiredQuantityPresenter pouringWaterInput text:
		self model pouringWater printString.
	requiredQuantityPresenter saltOnPouringWaterInput text:
		self model saltOnPouringWater printString.
	requiredQuantityPresenter saltOnTotalWaterInput text:
		self model saltOnTotalWater printString.
	requiredQuantityPresenter sourdoughInput text:
		self model sourdough printString.

	informationPresenter apparentHydrationLevelInput text:
		(self model apparentHydrationLevel * 100) printString.
	informationPresenter sourdoughFlourInput text:
		self model sourdoughFlour printString.
	informationPresenter sourdoughWaterInput text:
		self model sourdoughWater printString.
	informationPresenter totalFlourInput text:
		self model totalFlour printString.
	informationPresenter totalWaterWeightInput text:
		self model totalWaterWeight printString
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

	requiredQuantityPresenter := self instantiate:
		                             SourdoughQuantityRequiredPresenter.
	wishedQuantityPresenter := self instantiate:
		                           SourdoughQuantityWishedPresenter.
	informationPresenter := self instantiate:
		                        SourdoughInformationPresenter
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
