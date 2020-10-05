# SBDB_Asteriod_API
Automation Suite for testing CIT SBDB Asteriod API

# Prerequisites
Docker should be installed and running 

# Cloning the Repo from Guthbub
git clone https://github.com/divanshu-netizen/SBDB_Asteriod_API.git

# Accessing the Code and  Running DockereFile 
cd to asteriod_api

Go to the Command Prompt(Windows) or Terminal(MacOs/Linux)
Running DockerFile and creating an image, the steps will download all the dependencies needed to run the script
```
docker build .
```
Tagging the image 
```
docker build -t <image-name> .
```
Running the container and running the script in path_container
```
docker run -ti -v <path_asteriod_Api>:<path_container> <tagged-image-name> bash
```  

# Running Script and generating reports
Go to the path in the container where you have copied Script from your local machine and run robot commands to execte script

```
cd SBDB_Asteriod_API/asteriods_api/TestCases
```

```
robot --report /usr/src/SBDB_Asteriod_API/asteriods_api/TestReports/report.html --output /usr/src/SBDB_Asteriod_API/asteriods_api/TestReports/output.xml --log /usr/src/SBDB_Asteriod_API/asteriods_api/TestReports/TestReports/log.html testcase.robot
```

