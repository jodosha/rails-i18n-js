class Rails::I18n::Js::Railtie < Rails::Railtie
  initializer "rails-i18n-js.configure_rails_initialization" do |app|
    app.middleware.use ::Rack::I18n::Javascript
  end

  # Add a to_prepare block which is executed once in production
  # and before which request in development
  config.to_prepare do
    # TODO This force translations loading, use something more appropriate
    I18n.available_locales
  end
end