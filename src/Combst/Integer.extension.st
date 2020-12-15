Extension { #name : #Integer }

{ #category : #'*Combst' }
Integer >> Z [

	^ self isZero
		  ifTrue: [ BlockClosure I K ]
		  ifFalse: [ [ :f | [ :x | f B value: x ] ] S value: (self - 1) Z ]
]
