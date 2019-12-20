Description: Task 1

Scenario: Verify registration form
Meta:
@layout desktop
Given I am on the main application page
When I enter '<firstName><lastName>@ugly.email' in a field by the xpath '//*[@name='email']'
When I click on a button with the name 'submit'
When I enter '<firstName> <lastName>' in a field by the xpath '//*[@name='name']'
When I enter '<password>' in a field by the xpath '//*[@id='password']'
When I click on a button with the name 'signup'
When I wait until element located `By.xpath(//*[@class='first-board-text'])` appears
Examples:
|firstName                     |lastName                     |password                      |
|#{generate(Address.firstName)}|#{generate(Address.lastName)}|#{generate(Internet.password)}|
|#{generate(Address.firstName)}|#{generate(Address.lastName)}|#{generate(Internet.password)}|
|#{generate(Address.firstName)}|#{generate(Address.lastName)}|#{generate(Internet.password)}|

Scenario: Verify board creation
Meta:
@layout desktop
When I go to the relative URL '/create-first-board'
When I wait until element located `By.caseInsensitiveText(Welcome to Trello!)` appears
When I enter 'Vacation Planning' in a field by the xpath '//*[@*='board-name-input']'
When I click on a button with the name 'continue-button'
When I wait until element located `By.caseInsensitiveText(Create structure with lists)` appears
Then the text 'Things To Do' exists
Then the text 'Doing' exists
Then the text 'Done' exists
When I click on a button with the name 'continue-button'
When I wait until element located `By.caseInsensitiveText(Take a load off with cards)` appears
When I enter 'Book flights' in a field by the xpath '//*[@*='e.g. Book flights']'
When I enter 'Find a hotel' in a field by the xpath '//*[@*='e.g. Find a hotel']'
When I enter 'Call dogsitter' in a field by the xpath '//*[@*='e.g. Call dogsitter']'
When I click on a button with the name 'continue-button'
When I wait until element located `By.caseInsensitiveText(Get into the details)` appears
When I click on a button with the name 'continue-button'
When I wait until element located `By.caseInsensitiveText(Now you're a pro! Keep building your board)` appears
When I click on a button with the name 'continue-button'
When I wait until element located `By.id(board)` appears