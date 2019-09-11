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
				package: 'sourdough';
				package: 'sourdough-model' with: [ spec requires: #('sourdough') ];
				package: 'sourdough-test' with: [ spec requires: #('sourdough-model') ]]
]
