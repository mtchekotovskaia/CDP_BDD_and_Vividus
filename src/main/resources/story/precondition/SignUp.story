Scenario: Sign Up
Given I am on the main application page
When I enter '<firstName>_<lastName>@ugly.email' in a field by the xpath '//*[@name='email']'
When I click on a button with the name 'submit'
When I enter '<firstName> <lastName>' in a field by the xpath '//*[@name='name']'
When I enter '<password>' in a field by the xpath '//*[@id='password']'
When I click on a button with the name 'signup'
When I wait until element located `By.caseInsensitiveText(Welcome to Trello!)` appears
When I go to the relative URL '/logged-out'
When I wait until element located `By.xpath(//*[@*='Logged Out'])` appears
When I remove all cookies from the current domain