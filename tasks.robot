*** Settings ***
Library     RPA.Browser.Selenium


*** Variables ***
${url}          https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=%EC%84%9C%EC%9A%B8+%EC%A2%85%EB%A1%9C%EA%B5%AC+%EC%B2%AD%EC%9A%B4%EB%8F%99+%EB%82%A0%EC%94%A8&oquery=%EC%84%9C%EC%9A%B8+%EC%A2%85%EB%A1%9C%EA%B5%AC+%EB%82%A0%EC%94%A8&tqi=it0aIwp0YihssjwdNB0ssssssYs-196670
${search}       날씨


*** Tasks ***
Get Current Temperature
    Open Available Browser    ${url}
#    Input Text    css=#query    ${search}
#    Click Button    css=#search_btn
    Sleep    10
    Wait Until Element Is Visible
    ...    //*[@id="main_pack"]/section[1]/div[1]/div[2]/div[1]/div[1]/div/div[2]/div/div[1]/div[1]/div[2]/strong
    ${temperature}=    Get Text
    ...    //*[@id="main_pack"]/section[1]/div[1]/div[2]/div[1]/div[1]/div/div[2]/div/div[1]/div[1]/div[2]/strong
    Log    The current temperature is ${temperature}
    Sleep    10
    Close All Browsers
