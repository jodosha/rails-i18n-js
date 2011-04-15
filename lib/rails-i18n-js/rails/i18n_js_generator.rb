require 'rails/generators'

class I18nJsGenerator < Rails::Generators::Base
  source_root ::File.expand_path('../templates', __FILE__)

  def generate_layout
    copy_file "javascripts/locale.js", "public/javascripts/locale.js"
  end
end