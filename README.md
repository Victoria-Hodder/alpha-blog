# README

## About
This is a RoR app I am building as part of the Udemy Course "Complete Ruby on Rails Developer Course"

## Features

* Users can create, read, update and delete posts.
* Authentication System (log in, log out)
* Special functionality for admins (e.g. ability to create/delete categories)
* Search for posts according to title and content
* Double Opt In

And much more!

## Versions used in this project

```
Ruby 3.0.0
Rails 6.1.1
Yarn 1.22.5
Node 12.20.1
```

## Gems installed
```
gem 'bcrypt', '~> 3.1.7'
gem 'will_paginate', '3.3.0'
gem 'pg'
```

Note: for production purposes, I am using PostgreSQL gem for production code. For development, I am using sqlite3.
Please see Gemfile for more details.


## Running code on your machine

- Install the appropriate versions of Ruby, Rails etc.

    For example, you can follow [these instructions](https://gorails.com/setup/ubuntu/20.04) if you are using Ubuntu 20.04.

- Make a git clone of the code in this repo

- run `bundle install`

- run `rails assets:precompile`

- Run `rails server` or `rails s` and access the local server on http://localhost:3000/


## View the live app

You can view the deployed app on Heroku [here](https://victorias-udemy-project.herokuapp.com/)