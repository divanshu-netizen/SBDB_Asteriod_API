# SBDB_Asteriod_API
Automation Suite for testing CIT SBDB Asteriod API

# Prerequisites
Docker should be installed and running 

# Cloning the Repo from Guthbub
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
Running container from the tagged image, copying script from local to the container and running script inside container
```
docker run -ti -v </host/local/path/file>:</file/path/in/container/file> <tagged-image-name> bash
```  

# Running Script and generating reports
Go to the path in the container where you have copied Script from your local machine and run robot commands to execte script

```
cd SBDB_Asteriod_API/asteriods_api/TestCases
```

```
robot testcase.robot
```

```
docker cp <containerId>:</file/path/in/container/file> </host/local/path/file>
```
Copy the report.html, log.html and output.xml files from container to the localhost,
open the file report.html in a browser 
