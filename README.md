# UrbanPass
[![Gem Version](https://badge.fury.io/rb/urban_pass.svg)](http://badge.fury.io/rb/urban_pass) [![Build Status](https://travis-ci.org/enilsen16/urban_pass.svg?branch=master)](https://travis-ci.org/enilsen16/urban_pass)

After dealing with multiple password generators. We decided to create a password generator thats a little different.

![CorrectHorseBatteryStaple](http://i.imgur.com/T9PApGP.png)


## Installation

Install it yourself as:

    $ gem install urban_pass

## Usage

To save hitting an extra key you can also add this alias:

```
alias urban-pass=urban_pass
```

A list of commands:

```
  urban_pass                  # Alias for urban_pass generate_phrase
  urban_pass define [WORD]      # defines a word you may not know
  urban_pass generate_phrase  # Creates a new pass-phrase
  urban_pass help [COMMAND]   # Describe available commands or one specific command
```

## Contribution Guidelines

### Git Commit Messages

* Use the present tense ("Add feature" not "Added feature")
* Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
* Limit the first line to 72 characters or less
* Reference issues and pull requests liberally
* Consider starting the commit message with an applicable emoji:
    * :art: `:art:` when improving the format/structure of the code
    * :racehorse: `:racehorse:` when improving performance
    * :non-potable_water: `:non-potable_water:` when plugging memory leaks
    * :memo: `:memo:` when writing docs
    * :penguin: `:penguin:` when fixing something on Linux
    * :apple: `:apple:` when fixing something on Mac OS
    * :checkered_flag: `:checkered_flag:` when fixing something on Windows
    * :bug: `:bug:` when fixing a bug
    * :fire: `:fire:` when removing code or files
    * :green_heart: `:green_heart:` when fixing the CI build
    * :white_check_mark: `:white_check_mark:` when adding tests
    * :lock: `:lock:` when dealing with security
    * :arrow_up: `:arrow_up:` when upgrading dependencies
    * :arrow_down: `:arrow_down:` when downgrading dependencies
    * :shirt: `:shirt:` when removing linter warnings
