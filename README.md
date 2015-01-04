# Rails 4 Skeleton

Boilerplate for my Rails 4 projects.

# What it comes with

## Back
1. rails 4.2
1. posgresql
1. rspec/capybara/factory_girl/[shoulda](https://github.com/thoughtbot/shoulda)
1. [whenever](https://github.com/javan/whenever) (cronjobs; define them in config/schedule.rb)
1. capistrano 3.3.x (nginx/passenger)

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

Create config/database.yml, config/secrets.yml and config/application.yml from config/database.yml.example,
config/secrets.yml.example and config/application.yml.example. Add environment variables related to application
secrets (e.g. secret keys, passwords, etc) in config/application.yml ([figaro](https://github.com/laserlemon/figaro)
will make them available to your app). **These files are not (and should not be!!) checked in by git**! Make sure that they
exist on your deployment machine under /path/to/deploy/shared/config before running ```cap production deploy```
(capistrano will symlink them for each release).

Rename these to match your app's name:
- The module name in ./config/application.rb.
- The session store key name in ./config/initializers/session_store.rb.
- The main layout's title in ./app/views/layouts/application.html.erb.
- Database name/username/passwords/etc. in config/database.yml.

In config/application.rb:
- Change the smtp options to what you want.

In config/production.rb:
- Configure the exception_notification settings.

Set up your deploy options in config/deploy.rb and config/deploy/{production,staging}.rb.

Add/alter capistrano tasks in lib/capistrano/tasks to suit your needs.

# Design

In the main layout, application.html.erb, you'll notice that
the body tag gets classed as "controller_name action_name".
Therefore, you can apply specific CSS/JSS by doing the following:
- .controller{} for controller-wide styles.
- .controller.action{} for action-specific styles.
- $('.controller').ready(function(){}) for controller-wide scripts.
- $('.controller.action').ready(function(){}) for action-specific scripts.
- Global scripts/styles can go anywhere.

Note: the Javascript selectors won't work with Turbolinks, unless the jquery-turbolinks gem is included, which it already is, so don't remove it.

# References

Thanks to [TalkingQuickly](https://github.com/TalkingQuickly/capistrano-3-rails-template) for the wonderful
capistrano template I used.
