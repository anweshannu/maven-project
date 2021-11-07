pwd
ls -la
# Creates a docker image using Dockerfile
docker build -t tomcat-image .

# Creates and runs the container using tomcat-image
docker run -itd --name tomcat-deploy -p 80:8080 tomcat-image
