Extension { #name : #Integer }

{ #category : #'*Combst' }
Integer >> Z [

	^ self isZero
		  ifTrue: [ BlockClosure I K ]
		  ifFalse: [ BlockClosure B S value: (self - 1) Z ]
]
