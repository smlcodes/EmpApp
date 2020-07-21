pipeline {
    agent any
    tools {
        maven 'Apache Maven 3.6.0'
        jdk 'java-8-openjdk'
    }
    stages {
        stage('Initialize') {
            steps {
                sh ''
                '
                echo "PATH = ${PATH}"
                echo "M2_HOME = ${M2_HOME}"
                ''
                '
            }
        }

        stage('Build') {
            steps {
                sh 'mvn -Dmaven.test.failure.ignore=true install'
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml'
                }
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube5.3') {
                    sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar'
                }
            }
        }
    }
}
