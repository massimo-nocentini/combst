Extension { #name : #BlockClosure }

{ #category : #'*Combst' }
BlockClosure class >> B [

	^ [ :f | [ :x | f B value: x ] ]
]

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
BlockClosure >> R [

	| f |
	f := [ :y | 
	     | first second yFirst |
	     yFirst := y value: 0 Z.
	     first := self class B S value: yFirst.
	     second := (self value: yFirst) value: (y value: 1 Z).
	     first D2 value: second ].
	^ [ :a | [ :n | ((n value: f) value: (0 Z D2 value: a)) value: 1 Z ] ]
]

{ #category : #'*Combst' }
BlockClosure >> S [

	^ [ :g | [ :x | (self value: x) value: (g value: x) ] ]
]

{ #category : #'*Combst' }
BlockClosure >> W [

	^ [ :x | (self value: x) value: x ]
]
