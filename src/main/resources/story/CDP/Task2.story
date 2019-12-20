Description: Task 2

Lifecycle:
Examples:
|firstName                     |lastName                     |password                      |
|#{generate(Address.firstName)}|#{generate(Address.lastName)}|#{generate(Internet.password)}|

Scenario: Sign In
GivenStories: story/precondition/SignUp.story
Given I am on the main application page
When I click on a link with the URL '/login'
When I wait until element located `By.id(login-form)` appears
When I enter '<firstName>_<lastName>@ugly.email' in a field by the xpath '//*[@id='user']'
When I enter '<password>' in a field by the xpath '//*[@id='password']'
When I click on a button with the name 'login'

Scenario: Welcome board close
Meta:
@layout desktop
When I find <= '1' elements by By.xpath(//div[@class='first-board-wrapper']) and for each element do
|step																			          |
|When I click on an element by the xpath ' //div[@class='first-board-navigation']/span[5]'|
|When I click on an element by the xpath '//button[@data-test-id='continue-button']'      |

Scenario: Verify user profile
Meta:
@layout desktop
When I click on an element by the xpath '//button[@data-test-id='header-member-menu-button']'
When I click on an element by the xpath '//a[@data-test-id='header-member-menu-profile']'
Then the text '<firstName> <lastName>' exists

Scenario: Verify visual check
Meta:
@layout desktop
When I click on an element by the xpath '//*[@name="house"]'
When I wait until element located `By.xpath(//*[@class='home-container'])` appears
When I ${visualCheckAction} baseline with `Homepage`
When I go to the relative URL '/pricing'
When I wait until element located `By.xpath(//*[text()='Trello Your Way'])` appears
When I ${visualCheckAction} baseline with `Pricing`
When I go to the relative URL '/platforms'
When I wait until element located `By.xpath(//*[text()='Trello works seamlessly wherever you are.'])` appears
When I ${visualCheckAction} baseline with `Platforms`
When I go to the relative URL '/about'
When I wait until element located `By.xpath(//*[text()='What is Trello?'])` appears
When I ${visualCheckAction} baseline with `About`