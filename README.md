# Install

## Ruby on Rails install
Please install Ruby or RVM

[Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)

[Install RVM](https://rvm.io/)

Ruby version: **2.6.3**

```bash
$ ruby -v       # ruby 2.6.3p62 
```

After ruby install, run 

```bash
$ gem install rails
```

Rails version: **6.0.1**

```bash
$ rails -v      # Rails 6.0.1
```

# Running on Local server

After Ruby and Rails installed, go to the application root folder (which have Gemfile), and run

```bash
$ bundle install            # update dependencies 
```

# Database initialize

## database migration

```bash
$ rails db:migrate
```

## dabase seeding

```bash
$ rails db:seed
```
This only two sample currencies into database without any transactions

# run on your browser
if everything goes well, you can now see a console shows like this

```
=> Booting Puma
=> Rails 6.0.1 application starting in development
=> Run `rails server --help` for more startup options
Puma starting in single mode...
* Version 4.3.0 (ruby 2.6.3-p62), codename: Mysterious Traveller
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://127.0.0.1:3000
* Listening on tcp://[::1]:3000
Use Ctrl-C to stop
```

so you can go visit `localhost:3000` or `127.0.0.1:3000` to see application


# Test
all test files location in ./test/, run commend test
```
$ rails test
```

# Deployment

update your production info in 

- ./config/database.yml
- ./config/environments/production.rb


NOTICE: for production, please generate or secret_key_base in server and store in environment variables.