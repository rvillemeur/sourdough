"
Entry point for Sourdough application
"
Class {
	#name : #SourdoughApplication,
	#superclass : #SpApplication,
	#category : #'Sourdough-UI'
}

{ #category : #'class initialization' }
SourdoughApplication class >> initialize [
	WorldState desktopMenuPragmaKeyword: 'worldMenu'.
]

{ #category : #accessing }
SourdoughApplication class >> start [
	<example>
	^self new start
]

{ #category : #'class initialization' }
SourdoughApplication class >> worldMenu: aBuilder [
	<worldMenu>
	(aBuilder item: #Sourdough)
		order: 4.0;
		with: [ (aBuilder item: 'calculate')
				action: [ self  start ];
				parent: #Sourdough;
				icon: (self iconNamed: #glamorousTable);
				order: 0;
				help: 'Launch sourdough UI'. ]
]

{ #category : #initialization }
SourdoughApplication >> initialize [
	super initialize.
	self useBackend: #Morphic with: SourdoughConfiguration new
]

{ #category : #initialization }
SourdoughApplication >> start [
	^ (self new: SourdoughPresenter) openWithSpec
]
