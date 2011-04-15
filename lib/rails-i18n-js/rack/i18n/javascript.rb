module Rack
  module I18n
    class Javascript
      def initialize(app)
        @app = app
      end

      def call(env)
        if env['PATH_INFO'] =~ /\/javascripts\/locales\/(.*)\.js/
          serve_translations($1)
        else
          @app.call(env)
        end
      end

      def serve_translations(locale)
        # FIXME patch I18n::Backend::Base, adding #translations_for
        if translations = ::I18n.backend.send(:translations)[locale.to_sym]
          [ 200, {"Content-Type" => "text/javascript"}, javascript_for(locale, translations) ]
        else
          [ 404, {"Content-Type" => "text/javascript"}, "Not Found" ]
        end
      end

      def javascript_for(locale, translations)
        %(var __locale = #{translations.to_json};)
      end
    end
  end
end