tests
testSameRemoteReference

	| r1 r2 |
	r1 := IceRemote url: 'https://github.com/owner/repo.git'.
	r2 := IceRemote url: 'git@github.com:owner/repo.git'.	
	self assert: (r1 referencesSameRemoteLocationAs: r2)