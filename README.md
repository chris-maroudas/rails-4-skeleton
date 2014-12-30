# Rails 4 Skeleton

Boilerplate for my Rails 4 projects.

# What it comes with

## Back
1. rails 4.2
1. posgresql
1. rspec/capybara (with [shoulda](https://github.com/thoughtbot/shoulda))
1. [whenever](https://github.com/javan/whenever) (cronjobs; define them in config/schedule.rb)
1. passenger
1. capistrano

## Front
1. bootstrap-sass
1. jquery-ui-sass-rails

Also, no Coffeescript (I like my scripts in vanilla js).

# How to get started

```
git clone git@github.com:adibsaad/rails-4-skeleton.git app_name
cd app_name
rm -rf .git
```

Rename these to match your app's name:
- The module name in ./config/application.rb.
- The session store key name in ./config/initializers/session_store.rb.
- The main layout's title in ./app/views/layouts/application.html.erb.
- Database name and password in config/database.yml.

In config/application.rb:
- Change the smtp options to what you want.

In config/production.rb:
- Configure the exception_notification settings.

In config/deploy.rb, set up your deploy options.

Add capistrano tasks in lib/capistrano/tasks to suit your needs.

# Design

In the main layout, application.html.erb, you'll notice that
the body tag gets classed as "controller_name action_name".
- .controller{} for controller-wide styles.
- .controller.action{} for action-specific styles.
- $('.controller').ready(function(){}) for controller-wide scripting.
- $('.controller.action').ready(function(){}) for action-specific scripting.
- Global scripts/styles can go anywhere.
