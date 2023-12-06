## Introduction

This is a basic social web that have basic functions such as: sign up, log in, log out, post status or image, follow others, ... using framework Ruby on Rails based on the MVC architecture

## Getting started

To get started with the app, clone the repo and then install the needed gems:
```
$ bundle install --without production
```
Next, migrate the database:
```
$ rails db:migrate
```
Finally, run the test suite to verify that everything is working correctly:
```
$ rails test
```
If the test suite passes, you'll be ready to run the app in a local server:
```
$ rails server
```

