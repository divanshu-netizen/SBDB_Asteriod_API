# SBDB_Asteriod_API
Automation Suite for testing CIT SBDB Asteriod API

# Prerequisites
Docker should be pre-installed and running 

# Cloning the Repo from Githbub
```
git clone https://github.com/divanshu-netizen/SBDB_Asteriod_API.git
```

# Accessing the Code and  Running DockereFile 
```
cd SBDB_Asteriod_API/asteriods_api
```

Go to the Command Prompt(Windows) or Terminal(MacOs/Linux)
Running DockerFile and creating an image, the steps will download all the dependencies needed to run the script
```
docker build .
```
Tagging the image 
```
docker build -t <image-name> .
```
# Running Script and Generating Reports
Running container from the tagged image, copying script from local to the container and running script inside container
```
docker run -ti -v </host/local/path/file>:</file/path/in/container/file> <tagged-image-name>
```  

 Reports will be saved by default in TestCases folder:
 
 There are 3 types of report files generated:
 report.html,
 log.html,
 output.xml
 
 Open report.html file in a web browser
