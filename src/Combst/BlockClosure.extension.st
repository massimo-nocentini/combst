Extension { #name : #BlockClosure }

{ #category : #'*Combst' }
BlockClosure >> B [

	^ [ :g | [ :x | self value: (g value: x) ] ]
]

{ #category : #'*Combst' }
BlockClosure >> C [

	^ [ :x | [ :y | (self value: y) value: x ] ]
]

{ #category : #'*Combst' }
BlockClosure class >> I [

	^ [ :x | x ]
]

{ #category : #'*Combst' }
BlockClosure >> S [

	^ [ :g | [ :x | (self value: x) value: (g value: x) ] ]
]

{ #category : #'*Combst' }
BlockClosure >> W [

	^ [ :x | (self value: x) value: x ]
]
