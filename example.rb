require_relative 'lib/yandex_translate.rb'

# Need Yandex Key
key = "trnsl.1.1.20150807T193721Z.a28754c35f356a3c.9887c0360b34c7c397a5f114144c28840912b234"

yandex = YandexTranslate::Client.new(key)

puts "\nLanguage detection - \"Привет\"\n"
puts yandex.detect("Привет")

puts "\nLanguage translate - Я перевожу слово - Привет"
puts yandex.translate("Привет")

puts "\nAll Language"
puts yandex.get_langs
