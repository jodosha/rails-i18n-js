# Ruby on Rails i18n for JavaScript

This gem exposes your JSON serialized translations thru a Rack middleware, in order to use them with JavaScript.

## Installation
**This gem is under development, these steps are subject to change**

    # Gemfile
    gem 'rails-i18n-js', :git => 'https://github.com/jodosha/rails-i18n-js.git'

    # shell
    rails g i18n_js

## Usage
**This gem is under development, these steps are subject to change**

    # in your views
    <%= javascript_include_tag "locale", "locales/#{I18n.locale}" %>

    # in your javascripts
    window.alert( translate('hello') );

## Copyright

(c) 2011 Luca Guidi - [http://lucaguidi.com](http://lucaguidi.com), released under the MIT license
