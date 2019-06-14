node {
    
     def app
     stage('SCM checkout') {
        /* clonign the Repositroy to our workspack */
         
         checkout scm
      }

       stage('BUILD Image') {
        /* This builds the actual image */

        app = docker.build("jboothapati/finaltest")

        }
          
        stage('Test Image') {

        app.inside {
             echo "Test passed"

          }
       }
       stage('Push image to repository') {
        /* We should have the docker hub repositry before hand */
        
         docker.withRegistry('https://registry.hub.docker.com', 'john-docker') {
         app.push("${env.BUILD_NUMBER")
         app.push("latest")
         }
           echo "Trying to Push Docker Build to DockerHub"

       }

}





