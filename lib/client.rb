module YandexTranslate
  class Client
    def initialize(key)
      @connect = Connect.new(key)
    end

    def get_langs(lang = 'en')
      data = {"ui" => lang}
      @langs = @connect.request('getLangs',data)
    end

    def detect(text)
      data = {"text" => text}
      result = @connect.request('detect', data)['lang']
    end

    def translate(text, lang, format = 'plain')
      data = {"text" => text, "lang" => lang, "format" => format}
      result = @connect.request('translate', data)['text']
      result.size == 1 ? result.first : result
    end

    def translate_from_hash(text, *lang)
      if lang.last.is_a?(Hash)
        lang_options = lang.last
        format = lang_options.key?(:format) ? lang_options[:format] : 'plain'
        lang = [lang_options[:from], lang_options[:to]].compact
      end

      data = {"text" => text, "lang" => lang.join('-'), "format" => format}

      result = @connect.request('translate', data)['text']
      result.size == 1 ? result.first : result
    end
  end
end
