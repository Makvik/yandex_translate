module YandexTranslate
  class ClassDetect
    def ClassDetect(text)
      data = {"text" => text}
      @last_detect = @connect.request('detect', data)
      return @last_detect
    end

    def ClassDetect(text)
      data = {"text" => text}
      @last_detect = @connect.request('detect', data)
    end

    def code
      return @last_detect['code']
    end

    def lang
      return @last_detect['lang']
    end

    private
      @last_detect
  end
end
