pipeline{
agent {
label 'NODEJS'
}
     stages{
     stage('Download dependencies'){
             steps {
             sh '''
             npm install
             '''
             }
             }
        stage('Prepare Artifacts'){
        steps {
        sh '''
        zip -r todo.zip node_modules server.js
        '''
        }
        }
        stage('upload artifacts'){
        steps{
        sh '''
        curl -v -u admin:admin123 --upload-file /home/ubuntu/workspace/todo.zip http://192.168.0.52:8081/repository/todo/todo.zip
        '''
        }}
       }
     }
