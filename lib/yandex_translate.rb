require_relative "yandex_translate/version"
require 'json'
require 'net/http'
require 'uri'

[ "client",
  "error",
  "url",
  "connect"
].each do |file|
  require_relative file
end
