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
	.textInputField [ Draw { #color: #blue} ],
	.label [
		Font {  #name: "Verdana", #size: 10, #italic: false, #bold: true}],
		Draw { #color: #darkGray, #backgroundColor: #lightGray},
		.section [ 
			Draw { #color: #blue, #backgroundColor: #lightGray},
			Font {  #name: "Verdana", #size: 12, #italic: true, #bold: true}],
		.disabled [ Draw { #color: #veryLightGray} ]
	]

]
'
]
