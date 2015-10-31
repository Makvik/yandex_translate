require_relative 'lib/yandex_translate.rb'

# Need Yandex Key
key = ""

yandex = YandexTranslate::Client.new(key)

puts "\nLanguage detection - \"Привет\"\n"
# Only translate
puts yandex.detect("Привет")
# Hash
puts yandex.last_detect

puts "\nLanguage translate - Я перевожу слово - Привет"
# Only discovered language
puts yandex.translate("Привет")
puts yandex.last_translate

puts "\nAll Language"
yandex.get_langs_update("en")
puts yandex.get_langs
