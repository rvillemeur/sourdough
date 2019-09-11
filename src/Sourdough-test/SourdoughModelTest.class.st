Class {
	#name : #SourdoughModelTest,
	#superclass : #TestCase,
	#category : #'Sourdough-test'
}

{ #category : #testing }
SourdoughModelTest >> testApparentHydrationLevel [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model apparentHydrationLevel equals: 0.925.
]

{ #category : #testing }
SourdoughModelTest >> testInstanceCreation [
	| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model flour equals: 400.
	self assert: model doughHydrationLevel equals: 0.75.
	self assert: model saltRate equals: 0.03.
	self assert: model sourdoughHydrationLevel equals: 0.3.
	self assert: model sourdoughFlourRate equals: 0.5
]

{ #category : #testing }
SourdoughModelTest >> testSaltOnTotalWater [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model saltOnTotalWater equals: 12.
]

{ #category : #testing }
SourdoughModelTest >> testSaltOnpouringWater [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model saltOnPouringWater equals: 11.
]

{ #category : #testing }
SourdoughModelTest >> testSourdough [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model sourdough equals: 200.
]

{ #category : #testing }
SourdoughModelTest >> testSourdoughFlour [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model sourdoughFlour equals: 154.
]

{ #category : #testing }
SourdoughModelTest >> testSourdoughWater [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model sourdoughWater equals: 46.
]

{ #category : #testing }
SourdoughModelTest >> testTotalDoughWeight [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model totalDoughWeight equals: 970.
]

{ #category : #testing }
SourdoughModelTest >> testTotalWaterWeight [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model totalWaterWeight equals: 416.
]

{ #category : #testing }
SourdoughModelTest >> testpouringWater [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model pouringWater equals: 370.
]

{ #category : #testing }
SourdoughModelTest >> testtotalFlour [
| model |
	model := SourdoughModel
		flour: 400
		doughHydrationLevel: 0.75
		saltRate: 0.03
		sourdoughHydrationLevel: 0.3
		sourdoughFlourRate: 0.5.
	self assert: model totalFlour equals: 554.
]
