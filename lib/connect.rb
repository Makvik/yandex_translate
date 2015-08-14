module YandexTranslate
  class Connect
    def initialize(key)
      @key = key
    end

    def request(method, args = {})
      url = URI.parse("#{BASE_URI}#{method}?key=#{@key}")
      response = Net::HTTP.post_form(url, args).body
      begin
        response = JSON(response)
      rescue
        raise Error.new response
      end
      if response['code']
        code = response['code'].to_i
        if  ERROR_CODES.key?(code)
          raise Error.new(ERROR_CODES[code])
        end
      end
      return response
    end
  end
end
