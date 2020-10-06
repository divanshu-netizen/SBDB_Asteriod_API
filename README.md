# SBDB_Asteriod_API
Automation Suite for testing CIT SBDB Asteriod API

# Robot Framework Intro
Robot Framework is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). It has simple plain text syntax and it can be extended easily with libraries implemented using Python or Java.
Robot Framework is operating system and application independent. The core framework is implemented using Python, supports both Python 2 and Python 3

The framework has a rich ecosystem around it consisting of various generic libraries and tools that are developed as separate projects. For more information about Robot Framework and the ecosystem.

Robot Framework has a modular architecture that can be extended with bundled and self-made libraries.

When execution is started, the framework first parses the data. It then utilizes keywords provided by the libraries to interact with the target system. Libraries can communicate with the system either directly or using other tools as drivers.

Test or task execution is started from the command line. As a result, you get a report and log in HTML format as well as an XML output. These provide an extensive look into what your system does.

# Code Structure

There are 3 main components in this code base:
TestCases folder has main script that will be run in the Dockerfile i.e testcase.robot file.

Resources folder has user defined keywords file, this file is being imported in the testcase file.

Dockerfile This file is creating an image, running a container , downloading the dependencies & binary filesi.e python and robot framework libraries, running testcase.robot file and generating report.html, log.html and output.xml files in TestCases folder.

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
