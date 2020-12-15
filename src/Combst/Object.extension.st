Extension { #name : #Object }

{ #category : #'*Combst' }
Object >> D2 [

	^ [ :y | [ :z | (z value: y K) value: self ] ]
]

{ #category : #'*Combst' }
Object >> K [

	^ [ :y | self ]
]
