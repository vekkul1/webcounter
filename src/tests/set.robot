*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When setting counter value it updates  
    Go To  ${HOME_URL}
    Page Should Contain  nappia painettu 0 kertaa
    Input Text  name:set  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa
