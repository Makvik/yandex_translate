require_relative 'lib/yandex_translate.rb'

# Need Yandex Key
key = ""

yandex = YandexTranslate::Client.new(key)

puts "\nLanguage detection - \"Привет\"\n"
puts yandex.detect("Привет")

puts "\nLanguage translate - Я перевожу слово - Привет"
puts yandex.translate("Привет")

puts "\nAll Language"
puts yandex.get_langs
