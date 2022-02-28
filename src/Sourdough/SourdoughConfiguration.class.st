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
	^ SpStyle defaultStyleSheet, (SpStyleSTONReader
		fromString:
			'
.application [
	Draw { #color: #darkGray, #backgroundColor: #paleBlue},
	.textInputField [ Draw { #backgroundColor: #lightRed} ],
	.label [
		Font {  #name: "Verdana", #size: 10, #italic: false, #bold: true}],
		.section [ 
			Draw { #color: #blue, #backgroundColor: #lightYellow},
			Font {  #name: "Courier New", #size: 13, #italic: true, #bold: true}],
		.disabled [ Draw { #backgroundColor: #lightGreen} ]
	]

]
')
]
