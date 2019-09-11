"
I reprensent the basis of sourdough.
From 4 basis ingredient:
* flour 
* water
* salt 
* sourdough (itself composed of flour and water).
I give all the measure and information necessary to make sourdough bread.


"
Class {
	#name : #SourdoughModel,
	#superclass : #Object,
	#instVars : [
		'flour',
		'doughHydrationLevel',
		'saltRate',
		'sourdoughHydrationLevel',
		'sourdoughFlourRate'
	],
	#category : #'sourdough-model'
}

{ #category : #creation }
SourdoughModel class >> flour: anInteger doughHydrationLevel: aRate saltRate: aRate2 sourdoughHydrationLevel: aRate3 sourdoughFlourRate: aRate4 [
	^ self new
		flour: anInteger;
		doughHydrationLevel: aRate;
		saltRate: aRate2;
		sourdoughHydrationLevel: aRate3;
		sourdoughFlourRate: aRate4;
		yourself
]

{ #category : #'model access' }
SourdoughModel >> apparentHydrationLevel [
	^ ((self pouringWater  / flour) round:3) asFloat 
]

{ #category : #accessing }
SourdoughModel >> doughHydrationLevel [
	^ doughHydrationLevel
]

{ #category : #accessing }
SourdoughModel >> doughHydrationLevel: anObject [
	doughHydrationLevel := anObject
]

{ #category : #accessing }
SourdoughModel >> flour [
	^ flour
]

{ #category : #accessing }
SourdoughModel >> flour: anObject [
	flour := anObject
]

{ #category : #'model access' }
SourdoughModel >> pouringWater [
	^(doughHydrationLevel * self totalFlour - self sourdoughWater) rounded.
]

{ #category : #'model access' }
SourdoughModel >> saltOnPouringWater [
	^(self pouringWater * saltRate) rounded .
]

{ #category : #'model access' }
SourdoughModel >> saltOnTotalWater [
	^ ((self pouringWater + self sourdoughWater) * saltRate  ) rounded
]

{ #category : #accessing }
SourdoughModel >> saltRate [
	^ saltRate
]

{ #category : #accessing }
SourdoughModel >> saltRate: anObject [
	saltRate := anObject
]

{ #category : #'model access' }
SourdoughModel >> sourdough [
	^ flour * sourdoughFlourRate .
]

{ #category : #'model access' }
SourdoughModel >> sourdoughFlour [
	^ (self sourdough / (1 + sourdoughHydrationLevel)) rounded
]

{ #category : #accessing }
SourdoughModel >> sourdoughFlourRate [
	^ sourdoughFlourRate
]

{ #category : #accessing }
SourdoughModel >> sourdoughFlourRate: anObject [
	sourdoughFlourRate := anObject
]

{ #category : #accessing }
SourdoughModel >> sourdoughHydrationLevel [
	^ sourdoughHydrationLevel
]

{ #category : #accessing }
SourdoughModel >> sourdoughHydrationLevel: anObject [
	sourdoughHydrationLevel := anObject
]

{ #category : #'model access' }
SourdoughModel >> sourdoughWater [
	^self sourdough - self sourdoughFlour
]

{ #category : #'model access' }
SourdoughModel >> totalDoughWeight [
	^flour + self sourdough + self pouringWater 
]

{ #category : #'model access' }
SourdoughModel >> totalFlour [
	^flour + self sourdoughFlour.
]

{ #category : #'model access' }
SourdoughModel >> totalWaterWeight [
	^self pouringWater + self sourdoughWater 
]
