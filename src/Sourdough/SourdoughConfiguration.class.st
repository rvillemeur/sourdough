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
	Draw { #color: #black, #backgroundColor: #lightBlue},
	.label [
		Geometry { #hResizing: true, #height: 40 },
		.section [ 
			Draw { #color: #blue, #backgroundColor: #red},
			Font {  #name: "Verdana", #size: 11, #italic: true, #bold: true},
			Geometry { #hResizing: true, #height: 40 }]
	]
]
'
]
