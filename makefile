build:
	docker volume create jenkins-log
	docker volume create jenkins-data
	docker-compose build
start: 
	docker-compose up -d 
stop: 
	docker-compose down
delete:
	docker-compose down
	docker rmi -f jenkins-server:v1
	docker volume rm --force jenkins-log
	docker volume rm --force jenkins-data
get-logs:
	docker cp jenkins-master:/var/log/jenkins/jenkins.log jenkins.log
	cat jenkins.log
	rm -rf jenkins.log
