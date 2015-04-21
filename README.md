# Agile Philly Watir Webdriver Demo

# Installing Ruby

### OS X
Install RVM, along with the latest stable Ruby version: [http://rvm.io/](http://rvm.io/)

```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
```

### Windows

#### Install Ruby and the Ruby Development Kit
- Download the latest _32 bit_ version of ruby (_Not_ x64) from here: [http://rubyinstaller.org/downloads/](http://rubyinstaller.org/downloads/)
    - Run the installation wizard and check only the following boxes when prompted:
        - "Add Ruby executables to your PATH"

- Install DevKit
    - Download the appropriate Development Kit for the version of Ruby you installed: [http://rubyinstaller.org/downloads/](http://rubyinstaller.org/downloads/)
    - Extract the files to your desired location (e.g. `C:\DevKit`)
    - Open a command prompt, change into the directory you just extracted the files to (e.g. `C:\DevKit`), and run the following:

```
> ruby dk.rb init
> ruby dk.rb install
```

#### Install Ansicon
This step is not required, but makes test results readable from the command line by allowing colored output.

- Download Ansicon: [https://github.com/adoxa/ansicon/downloads](https://github.com/adoxa/ansicon/downloads)
- Unzip it to wherever (e.g. `C:\ansicon`)
- From the command line, change into the `x64` directory in the ansicon directory (e.g. `C:\ansicon\x64`)
- Run `ansicon.exe -i`

## Learning Ruby, Watir, Cucumber
- Codecademy Ruby course: http://www.codecademy.com/en/tracks/ruby
- Try Ruby online: http://tryruby.org/levels/1/challenges/0
- Cucumber & Cheese: https://leanpub.com/cucumber_and_cheese
- Cucumber website: https://cukes.info/
- Watir WebDriver: http://watirwebdriver.com/

## Text Editors
- Atom: https://atom.io/
    + Cucumber packages: https://atom.io/packages/search?q=cucumber
- Sublime Text: http://www.sublimetext.com/
    + Cucumber packages: https://packagecontrol.io/search/cucumber
- RubyMine: https://www.jetbrains.com/ruby/

## Cucumber Project Structure
The basic structure:
```
| example_project
|---- features/
|-------- step_definitions/
|------------ example_steps.feature
|-------- support/
|------------ env.rb
|------------ hooks.rb
|------------ pages/
|--------------- example_page.rb
|-------- example.feature
|---- cucumber.yml
|---- Gemfile
```

## Running tests
Type `cucumber --help` on the command line for full information on how to run tests.

Run the whole test suite:
```
cucumber 
```

Run an entire feature:
```
cucumber features/google_search.feature
```

Run a scenario (by line number):
```
cucumber features/google_search.feature:7
```

Run all scenarios with a particular tag
```
cucumber --tags @some_tag
```

