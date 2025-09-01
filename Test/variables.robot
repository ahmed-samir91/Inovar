*** Variables ***
${BASE_URL}    https://qa-test-frontend-ce07bae316f3.herokuapp.com/
${browser}     Chrome
${username}   nxttester
${password}   nxt#qA@23
${LoginUsernameInput}    id=username
${LoginPasswordInput}    id=password
${LoginButton}           Login
${Skip2FAButton}       //button[@type='button']
${NewEventButton}       //a[@href='/events/options']
${StartFromScratch}    //p[contains(normalize-space(.), 'Create a fresh event')]
${EventNameInput}      //*[@id="root"]/div[1]/div[5]/main/div/div/div/div[1]/div[2]/div[2]/div[1]/div[2]/input
${EventtypeDropdown}    //*[@id="root"]/div[1]/div[5]/main/div/div/div/div[1]/div[2]/div[2]/div[2]/div[2]/select
${EventSlugInput}       //*[@id="root"]/div[1]/div[5]/main/div/div/div/div[1]/div[2]/div[3]/div[2]/input
${EventTimeZoneDropdown}    //*[@id="root"]/div[1]/div[5]/main/div/div/div/div[2]/div[2]/div[3]/div[2]/select
${EventStartDate}    //input[@type='date']
${EventStartTime}    //input[@type='time']
${EventEndDate}      //div/descendant::input[@type='date'][2]
${EventEndTime}      //div/descendant::input[@type='time'][2]
${CreateEventButton}    //button[@class="Button_root__0RbKd Button_primary__NGIIN Button_xl__w2v80"]