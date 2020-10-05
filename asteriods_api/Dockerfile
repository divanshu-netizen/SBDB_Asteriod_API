FROM python:3

RUN python3 -m pip install robotframework
RUN python3 -m pip install robotframework-jsonlibrary
RUN python3 -m pip install robotframework-requests

CMD ["robot", "-d", "/usr/src/TestCases", "/usr/src/TestCases/testcase.robot"]
