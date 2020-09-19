# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# TaskLeaf

## Overview
This project is implemented to manage the tasks

## Description
TBD

## Demo
TBD

## VS. 
TBD

## Requirement
* Ruby 2.7.1
* Rails 5.2.3
* MySQL 5.6

## Usage
Start your server:

```bash
rails s
```

Open the browser and access to the link below.

```bash
http://localhost:3000/
```

## Install
Clone the repository:
```bash
git clone https://github.com/kazkosa/taskleaf2.git
```
Install the dependencies:

```bash
bundle install
```

Create your database:

```bash
rake db:create
```

Migrate the database tables:

```bash
rake db:migrate
```

Populate your development database with sample data:

```bash
rake db:seed
```

## Contribution
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Features
* TBD

## Test
Test runs by executing the following command

- Model Test

```bash
bundle exec rspec spec/models/*
```

- Controller Test

```bash
bundle exec rspec spec/controllers/*
```

- System Test

```bash
bundle exec rspec spec/features/*
```

- All Test at once

```bash
bundle exec rspec
```


## DB schema
### users table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, index: true|
|email|string|null: false, unique: true, index: true|
|password|string|null: false|
|admin_level|integer|null:false|

Association
- has_many :
- has_many :


### xxxx table
|Column|Type|Options|
|------|----|-------|
||||

Association
- belongs_to :

## Licence
Copyright (c) 2019 Kazuyuki Kosaka  
Released under the MIT license  
https://opensource.org/licenses/mit-license.php

## Author
Kazuyuki Kosaka
