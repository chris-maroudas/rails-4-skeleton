# Rails 4 Skeleton

Boilerplate for my Rails 4 projects.

# What it comes with
1. [bootstrap-sass](https://rubygems.org/gems/bootstrap-sass)
2. [jquery-ui-sass-rails](https://rubygems.org/gems/jquery-ui-sass-rails)

# What it doesn't come with
1. Coffeescript (I like my scripts vanilla)

# How to get started

```
git clone git@github.com:adibsaad/rails-4-skeleton.git
```

Rename these to match your app's name:
- The folder name
- The module name in ./config/application.rb.
- The session store key name in ./config/initializers/session_store.rb.
- The main layout's title in ./app/views/layouts/application.html.erb.

# Design

In the main layout, application.html.erb, you'll notice a few things:
  1. Scripts are at the bottom of the body section (not the default head section)
  2. Scripts/styles unique to each view can be stored in 'app/assets/{javascripts,stylesheets}/$(controller_name)/$(action_name).{js,css}'
  3. Scripts/styles common to all actions in a controller can be stored in 'app/assets/{javascripts,stylesheets}/$(controller_name).{js,css}'
  4. Scripts common to the entire application are stored in 'app/assets/javascripts/common'
  5. Styles common to the entire application are stored in 'app/assets/stylesheets/common' and should be imported in main.css.scss of the same folder
