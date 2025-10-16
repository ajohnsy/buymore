pipeline  {
  agent any 
  stages  {
     stages('checkout from git repo')  {
		steps {
		   checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url:'https://github.com/ajohnsy/buymore.git']])
	  }
      }
   }
}	