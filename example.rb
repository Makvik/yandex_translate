require 'yandex_translate'

# Need Yandex Key
key = ""

yandex = YandexTranslate::Client.new(key)


puts "\nLanguage detection - \"Привет\"\n"
puts yandex.detect("Привет")

puts "\nLanguage translate - Я перевожу слово - Привет"
puts yandex.translate("Я перевожу слово - Привет")

puts "\nAll Language"
yandex.get_langs.each do |langs|
  puts langs
end


