require_relative 'lib/yandex_translate.rb'

# Need Yandex Key
key = ''

yandex = YandexTranslate::Client.new(key)

puts "\nLanguage detection - \'Car\'\n"
# Only translate
puts yandex.detect 'car'

puts "\nLanguage translate - Car"
# Only translate language
puts yandex.translate 'Car', 'fr'
puts yandex.translate 'Car', 'en-fr'
puts yandex.translate 'Car', 'fr', 'plain'
puts "\n"
puts yandex.translate_from_hash 'Car', to: 'fr'
puts yandex.translate_from_hash 'Car', from: 'en', to: 'fr'
puts yandex.translate_from_hash 'Car', from: 'en', to: 'fr', format: 'plain'


puts "\nAll Language"
puts yandex.get_langs
puts "\n"
puts yandex.get_langs 'en'
