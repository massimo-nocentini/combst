Extension { #name : #BlockClosureTest }

{ #category : #'*Combst-Tests' }
BlockClosureTest >> testB [

	self
		assert: (([ :x | x + 1 ] B value: [ :y | y * 2 ]) value: 4)
		equals: 4 * 2 + 1
]

{ #category : #'*Combst-Tests' }
BlockClosureTest >> testC [

	self
		assert: ((BlockClosure I C value: 4) value: [ :x | x + 1 ])
		equals: 4 + 1
]

{ #category : #'*Combst-Tests' }
BlockClosureTest >> testD2 [

	self
		assert: ((3 D2 value: 4) value: 0 Z) equals: 3;
		assert: ((3 D2 value: 4) value: 1 Z) equals: 4;
		assert: ((3 D2 value: 4) value: 2 Z) equals: 4;
		assert: ((3 D2 value: 4) value: BlockClosure I K) equals: 3
]

{ #category : #'*Combst-Tests' }
BlockClosureTest >> testI [

	self assert: (BlockClosure I value: 4) equals: 4
]

{ #category : #'*Combst-Tests' }
BlockClosureTest >> testK [

	self assert: (4 K value: 3) equals: 4
]

{ #category : #'*Combst-Tests' }
BlockClosureTest >> testS [

	self
		assert: (([ :x | [ :y | x + y ] ] S value: [ :y | y * 2 ]) value: 4)
		equals: 4 + (4 * 2)
]

{ #category : #'*Combst-Tests' }
BlockClosureTest >> testW [

	self
		assert: ([ :x | [ :y | x + y ] ] W value: 4) equals: 4 + 4;
		assert: ([ :x | [ :y | x * y ] ] W value: 4) equals: 4 * 4
]

{ #category : #'*Combst-Tests' }
BlockClosureTest >> testZ [

	| f |
	f := [ :x | x + 1 ].


	(1 to: 10) do: [ :each | 
		self assert: ((each Z value: f) value: 4) equals: 4 + each ].
	self
		assert: ((1 to: 10) collect: [ :each | 
				 (each Z value: [ :x | x * 2 ]) value: 4 ])
		equals: #( 8 16 32 64 128 256 512 1024 2048 4096 )
]
