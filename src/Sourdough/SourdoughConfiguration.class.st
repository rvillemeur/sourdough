"
sourdough style definition
"
Class {
	#name : #SourdoughConfiguration,
	#superclass : #SpMorphicConfiguration,
	#category : #'Sourdough-UI'
}

{ #category : #styling }
SourdoughConfiguration >> styleSheet [
	^ SpStyleSTONReader
		fromString:
			'
.application [
	Font { #name: "Times", #size: 8, #italic: false, #bold: false },
	Geometry { #height: 25 },
	.label [
		Geometry { #hResizing: true },
		.section [ 
			Draw { #color: #blue},
			Font {  #name: "Verdana", #size: 11, #italic: true, #bold: true } ]
	]
]
'
]
