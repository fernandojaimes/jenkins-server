# Jenkins server

### Plugins 
..

### How to run project 

```sh
docker volume create jenkins-log
```

```sh
docker volume create jenkins-data
```

```sh
docker-compose up -d --build
```

```sh
docker cp jenkins-master:/var/log/jenkins/jenkins.log jenkins.log
```

```sh
cat jenkins.log
```
