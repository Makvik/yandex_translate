module YandexTranslate
  class Client

    def initialize(key)
      @connect = Connect.new(key)
      @langs = get_langs_update
    end

    @last_detect = ClassDetect.new

    def get_langs
      return @langs
    end

    def get_langs_update(lang = 'en')
      data = {"ui" => lang}
      @langs = @connect.request('getLangs',data)
    end

    def detect(text)
      data = {"text" => text}
      @last_detect = @connect.request('detect', data)
      return detect.code
    end

    def translate(text, lang = 'ru', format = 'plain')
      data = {"text" => text, "lang" => lang, "format" => format}
      return @connect.request('translate', data)
    end




  end
end
