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
				package: 'Sourdough';
				package: 'Sourdough-model' with: [ spec requires: #('Sourdough') ];
				package: 'Sourdough-test' with: [ spec requires: #('Sourdough-model') ]]
]
