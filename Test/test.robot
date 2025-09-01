*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    keywords.robot
Resource    variables.robot 

***Test Cases ***
Login and Create Event
    [Documentation]    Test case to log in and create an event
    ${eventslag}    FakerLibrary.Firstname
    Open Browser and Maximize   ${BASE_URL}
    Login and Skip2FAButton    ${username}    ${password}
    Create New Event From Scratch   Test Event    Conference    ${eventslag}    06/06/2026    10:00:2   06/07/2026    12:00:2     (UTC+3:00) Doha  
    Close Browser