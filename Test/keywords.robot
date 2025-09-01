*** Settings ***
Resource    variables.robot

*** Keywords ***
Open Browser and Maximize
    [Arguments]    ${BASE_URL}
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    ${LoginUsernameInput}    timeout=10s

Login and Skip2FAButton
    [Arguments]    ${username}    ${password}
    Wait Until Page Contains Element    ${LoginUsernameInput}    timeout=10s
    Input Text    ${LoginUsernameInput}    ${username}
    Input Text    ${LoginPasswordInput}    ${password}
    Click Button    ${LoginButton}
    Wait Until Page Contains Element    ${Skip2FAButton}    timeout=10s
    Click Button    ${Skip2FAButton}

Create New Event From Scratch
    [Arguments]     ${event_name}    ${event_type}    ${event_slug}    ${start_date}   ${start_time}    ${end_date}    ${end_time}  ${event_typeime_zone}
    Wait Until Page Contains Element    ${NewEventButton}    timeout=15s
    Click Element    ${NewEventButton}
    Wait Until Page Contains Element    ${StartFromScratch}    timeout=15s
    Click Element    ${StartFromScratch}
    Wait Until Page Contains Element    ${EventNameInput}    timeout=15s
    Input Text    ${EventNameInput}    ${event_name}    
    Select From List By Value    ${EventtypeDropdown}    ${event_type}
    Input Text    ${EventSlugInput}    ${event_slug}    
    Input Text    ${EventStartDate}    ${start_date}
    Input Text    ${EventStartTime}    ${start_time}
    Input Text    ${EventEndDate}    ${end_date}
    Input Text    ${EventEndTime}    ${end_time}
    Select From List By Value    ${EventTimeZoneDropdown}    ${event_typeime_zone}
    Scroll Element Into View    ${CreateEventButton}
    Click Button    ${CreateEventButton}
    Wait Until Page Contains    Event created successfully    timeout=15s
