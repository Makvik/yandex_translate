require 'json'
require 'net/http'

module Yandex_Translate
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
end