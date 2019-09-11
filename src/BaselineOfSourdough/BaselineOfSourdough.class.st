Class {
	#name : #BaselineOfSourdough,
	#superclass : #BaselineOf,
	#category : #BaselineOfSourdough
}

{ #category : #baselines }
BaselineOfSourdough >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Sourdough-Model';
				package: 'Sourdough-Test' with: [ spec requires: #('Sourdough-Model') ]]
]
