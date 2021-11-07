pwd
ls -la
# Creates a docker image using Dockerfile
docker build -t tomcat-image .

if [[ echo $( $(docker ps -aq --filter "name=tomcat-deploy"))]];
then
#Deletes the existing docker container with name 'tomcat-deploy'
docker rm -f $(docker ps -aq --filter "name=tomcat-deploy")
fi

# Creates and runs the container using tomcat-image
docker run -itd --name tomcat-deploy -p 80:8080 tomcat-image
