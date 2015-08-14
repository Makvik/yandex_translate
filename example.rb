require 'yandex_translate'

# Need Yandex Key
key = "trnsl.1.1.20150813T202035Z.0bf93fe64f14cffb.f22ba458304ebe91b9d659cc2a381c694edd9d74"

yandex = YandexTranslate::Client.new(key)

puts "\nLanguage detection - \"Привет\"\n"
puts yandex.detect("Привет")

puts "\nLanguage translate - Я перевожу слово - Привет"
puts yandex.translate("Я перевожу слово - Привет")

puts "\nAll Language"
puts yandex.get_langs



