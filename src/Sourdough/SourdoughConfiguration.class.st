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
	Font { #name: "Source Sans Pro", #size: 10 },
	Geometry { #height: 25 },
	.label [
		.section [ 
			Draw { #color: #blue},
			Font {  #name: "Courrier new", #size: 14, #italic: true, #bold: true } ]
	]
]
'
]
