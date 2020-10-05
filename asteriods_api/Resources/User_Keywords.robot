*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections


*** Variables ***
${api_endpoint}  https://ssd-api.jpl.nasa.gov


*** Keywords ***
Verify Status Code with No Query Params
    [Arguments]  ${expectedStatusCode}
    create session  SName  ${api_endpoint}
    ${response}  get request  SName  /cad.api
    ${statusC}  convert to string  ${response.status_code}
    should be equal  ${expectedStatusCode}  ${statusC}
    ${responsebody}  convert to string  ${response.content}
    should contain  ${responsebody}  signature

Verify Status Code with Valid Query Params
    [Arguments]  ${params}  ${expectedStatusCode}
    create session  SName  ${api_endpoint}
    ${params}  create dictionary  date-min=now  date-max=+60  dist-max=0.05
    ${response}  get request  SName  /cad.api  params=${params}
    ${statusC}  convert to string  ${response.status_code}
    should be equal  ${expectedStatusCode}  ${statusC}

Verify Response when query too restrictive
    [Arguments]  ${params}  ${expectedcountno}
    create session  SName  ${api_endpoint}
    ${params}  create dictionary  des=141P  v-inf-min=18.5
    ${response}  get request  SName  /cad.api  params=${params}
    ${expectedcount}  convert to string  ${response.content}
    should be equal  ${expectedcountno}  0


Verify Bad Request
    [Arguments]  ${params}  ${expectedStatusCode}
    create session  SName  ${api_endpoint}
    ${params}  create dictionary  sort=TestSort
    ${response}  get request  SName  /cad.api  params=${params}
    ${statusC}  convert to string  ${response.status_code}
    should be equal  ${expectedStatusCode}  ${statusC}

Method Not Allowed
    [Arguments]  ${responsebodyvalue}  ${expectedStatusCode}
    create session  SName  ${api_endpoint}
    ${response}  head request  SName  /cad.api
    log to console  ${response.status_code}
    ${responsebody}  convert to string  ${response.content}
    should be equal  ${responsebodyvalue}  Invalid HTTP method: must be GET or POST
    ${statusC}  convert to string  ${response.status_code}
    should be equal  ${expectedStatusCode}  ${statusC}









