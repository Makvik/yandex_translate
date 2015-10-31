module YandexTranslate
  class Client
    def initialize(key)
      @connect = Connect.new(key)
      @langs = get_langs_update
      @last_detect
      @last_translate
    end

    def last_detect
      @last_detect
    end

    def last_translate
      @last_transtale
    end

    def get_langs
      @langs
    end

    def get_langs_update(lang = 'en')
      data = {"ui" => lang}
      @langs = @connect.request('getLangs',data)
    end

    def detect(text)
      data = {"text" => text}
      @last_detect = @connect.request('detect', data)
      return @langs["langs"][@last_detect["lang"]]
    end

    def translate(text, lang = 'en', format = 'plain')
      data = {"text" => text, "lang" => lang, "format" => format}
      @last_transtale = @connect.request('translate', data)
      return @last_transtale["text"]
    end
  end
end
