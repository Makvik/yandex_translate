require 'json'
require 'net/http'


 class Connect
    def initialize(key)
      @key = key
    end

    def get(type, data)
      postfix = URI.encode_www_form(data)
      return JSON.parse(Net::HTTP.get(URI("#{BASE_URI}#{type}?key=#{@key}&#{postfix}")))
    end

    private
      BASE_URI = 'https://translate.yandex.net/api/v1.5/tr.json/'.freeze
  end

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

    def detect_without_hash(text)
      return @langs["langs"].fetch(detect(text)["lang"])
    end

    def direction_of_translation(languages)
      languages = languages.split("-")
      languages[0] = @langs["langs"].fetch(languages[0])
      languages[1] = @langs["langs"].fetch(languages[1])
      return languages
    end

    def translate(text, lang = 'ru', format = 'plain')
      data = {"text" => text, "lang" => lang, "format" => format}
      return @connect.get('translate', data)
    end
  end


key = "trnsl.1.1.20150807T193721Z.a28754c35f356a3c.9887c0360b34c7c397a5f114144c28840912b234"

yandex = Client.new(key)

puts yandex.direction_of_translation(yandex.translate("Hello")["lang"])