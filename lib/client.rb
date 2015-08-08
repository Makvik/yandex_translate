require "yandex_translate/version"
require "Client"

module Yandex_Translate
  class Client
    def initialize(key)
      @connect = Connect.new(key)
      @langs = get_langs_update
    end

    def get_langs
      return @langs
    end

    def get_langs_update(lang = 'en')
      data = {"ui" => lang}
      @langs = @connect.get('getLangs', data)
    end

    def detect(text)
      data = {"text" => text}
      return @connect.get('detect', data)
    end

    def translate(text, lang = 'ru', format = 'plain')
      data = {"text" => text, "lang" => lang, "format" => format}
      return @connect.get('translate', data)
    end
  end
end