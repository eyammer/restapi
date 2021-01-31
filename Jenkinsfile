node('master') {
    // sh "mkdir app"
    dir("app"){
        try{
            git 'https://github.com/eyammer/restapi.git'
            sh "ls -la"
            sh "sudo docker build -t restapi:latest ."
            sh "sudo docker run --name testingApp -d -p 5000:5000 restapi:latest"
            sh "pip3 install requests"
            sh "pytest tests.py"
        }
        finally{
            sh "sudo docker rm -f testingApp"
            // sh "docker rmi restapi:latest"
        }
    }
}