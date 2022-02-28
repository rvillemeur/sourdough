"
sourdough style definition

using STON notation
""(SpStyleSTONReader
		fromString:
			'
.application [
	Draw { #color: #darkGray, #backgroundColor: #paleBlue},
	.textInputField [ Draw { #backgroundColor: #lightRed} ],
	.label [
		Font {  #name: ""Verdana"", #size: 10, #italic: false, #bold: true}],
		.section [ 
			Draw { #color: #blue, #backgroundColor: #lightYellow},
			Font {  #name: ""Courier New"", #size: 13, #italic: true, #bold: true}],
		.disabled [ Draw { #backgroundColor: #lightGreen} ]
	]

]
')""
"
Class {
	#name : #SourdoughConfiguration,
	#superclass : #SpMorphicConfiguration,
	#category : #'Sourdough-UI'
}

{ #category : #styling }
SourdoughConfiguration >> styleSheet [

	^ SpStyle newApplication
		  addPropertyDrawWith: [ :draw | 
			  draw
				  color: Color darkGray;
				  backgroundColor: Color paleBlue ];
		  addClass: 'textInputField' with: [ :aCommonClass | 
		  aCommonClass addPropertyDrawWith: [ :draw | 
			  draw backgroundColor: Color lightRed ] ];
		  addClass: 'label' with: [ :aCommonClass | 
		  aCommonClass addPropertyFontWith: [ :font | 
			  font
				  name: 'Verdana';
				  size: 10;
				  italic: false;
				  bold: true ] ];
		  addClass: 'section' with: [ :aCommonClass | 
		  aCommonClass
			  addPropertyDrawWith: [ :draw | 
				  draw
					  color: Color blue;
					  backgroundColor: Color lightYellow ];
			  addPropertyFontWith: [ :font | 
				  font
					  name: 'Consolas';
					  size: 13;
					  italic: true;
					  bold: true ] ];
		  addClass: 'disabled' with: [ :aCommonClass | 
		  aCommonClass addPropertyDrawWith: [ :draw | 
			  draw backgroundColor: Color lightGreen ] ]
]
