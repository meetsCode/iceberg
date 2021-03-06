tests - create repository
testUseExistingLocalRepo
	"prepare"
	IceGitCommand in: self absoluteLocation parent execute: {'clone'. origin}.
	IceGitCommand in: self absoluteLocation execute: {'checkout -b newBranch'}.

	"exercise"
	repository := IceRepositoryCreator new 
		location: self absoluteLocation;
		createRepository.
	
	"test"
	self assert: (repository savedPackages anySatisfy: [:pkg | pkg name = 'Pharo-Git-Test']).
	self assert: repository branch name equals: 'newBranch'.

