module Rack
  module I18n
    class Javascript
      class_attribute :namespace
      self.namespace = ''

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

      def serve_translations(locale, namespace = self.class.namespace)
        if translations = ::I18n.t(namespace, :locale => locale)
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
