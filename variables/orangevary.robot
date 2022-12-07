*** Variables ***
${url} =  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${brw} =  googlechrome
${user} =  xpath =  (//input[@class='oxd-input oxd-input--active'])[1]
${u} =  Admin
${p} =  admin123
${pwd} =  xpath =  //input[@type='password']
${sub} =  xpath =  //button[@type='submit']
${timelink} =    //*[@href='/web/index.php/time/viewTimeModule']
${reclink} =  xpath =  //*[@href='/web/index.php/recruitment/viewRecruitmentModule']
${nad} =  Network Administrator
${drop} =  xpath =  (//div[@class='oxd-select-text--after']//i)[1]