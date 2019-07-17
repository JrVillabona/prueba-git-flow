# The test has been done with Ruby, Selenium & Cucumber (BDD Framework)
Concept for Automation functional testing using Ruby, Selenium and Cucumber in Chrome headless mode. It shows a couple of solutions for automation test suite for contact form validation and search validation in My Store website.

Ruby is the language I used to write the test code. I like Ruby as it is fairly easy to learn language, does not require a compiler. Plus Cucumber is written in Ruby, so it’s a natural choice.

Cucumber, along with Gherkin, is the testing framework. Gherkin is the business language I used to write the tests in a “human readable” way. Cucumber ties the Gherkin feature files to the execution code written in Ruby. Cucumber helps capture test results as well. 

Selenium is the HTTP driver used to navigate a browser from code. Often people refer to user interface automated tests as “Selenium Tests” but these are more accurately called “Behavior Driven” or “Acceptance Driven” tests.

## Installation
First of all you need to have [Ruby](https://rubyinstaller.org/), [Chrome](https://www.google.es/chrome/index.html) browser and [Git](https://git-scm.com/download) installed. Once you have them, in order to install the tests, follow the next steps from terminal:

Install Homebrew that is a package manager (MacOS):
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)
```
Clone the repository project:
```
git clone https://github.com/JrVillabona/my-store-contact.git
cd my-store-contact
```
Install tools (MacOS):
```
brew install ruby
sudo gem install bundler
sudo gem install selenium-webdriver -v 3.2.1
sudo gem install cucumber
sudo bundle install
```
## Execution
In order to execute the tests, you just need to execute the following command:
```
cucumber
```
In order to execute the tests and generate a HTML report (this report will be in the main folder project), you just need to execute the following command:
```
cucumber -f pretty -f html -o report.html
```
## Generals

- In the folder `features/step_definitions` are files who define steps for each feature.
- In file `env.rb` there are environment vars.
- In file `hooks.rb` there are actions after/before each feature/scenario/tag.
- In file `helpers.rb` there are modules and methods that you think can be used for many steps/features.
- The files `.feature` there are in folder `features` and uses descriptive names.

## Documentation

- Cucumber: https://docs.cucumber.io/
- Cucumber-Ruby : https://www.rubydoc.info/gems/selenium-cucumber/toplevel
- Ruby: https://ruby-doc.org/ - http://rubytutorial.wikidot.com/