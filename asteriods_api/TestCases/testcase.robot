#!Robot Framework

*** Settings ***
Metadata  Author  *divanshu-netizen*
Documentation  Keyword Driven Test with RF

Resource  ../Resources/User_Keywords.robot
Library  RequestsLibrary



*** Variables ***
${api_endpoint}  https://ssd-api.jpl.nasa.gov


*** Test Cases ***
TC001
    Verify Status Code with No Query Params  200

TC002
    Verify Status Code with Valid Query Params  date-min=now date-max=+60 dist-max=0.05  200
    Verify Status Code with Valid Query Params  dist-max=10LD date-min=2018-01-01 sort=dist  200
    Verify Status Code with Valid Query Params  des=141P  200

TC003
    Verify Response when query too restrictive  des=141P  0
    Verify Response when query too restrictive  des=141P v-inf-min=18.5  0
    Verify Response when query too restrictive  date-min=now&date-max=now&dist-max=0.05  0
    Verify Response when query too restrictive  date-min=2021-10-10  0
    Verify Response when query too restrictive  date-max=2018-10-10  0
    Verify Response when query too restrictive  date-max=now  0
    Verify Response when query too restrictive  spk=2000433  0

TC004
    Verify Bad request  sort=TestSort  400
    Verify Bad Request  date-min=now&date-max=+60&dist-max=0.05  400
    Verify Bad Request  pha  400

TC005
    Method Not Allowed  Invalid HTTP method: must be GET or POST  405







