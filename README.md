# YandexTranslate

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yandex_translate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yandex_translate

## Usage
Api Key see on https://tech.yandex.com/translate/
```
yandex = YandexTranslate::Client.new(Api_Key)

Language detection
# Only translate
puts yandex.detect("Привет")
# Hash
puts yandex.last_detect

Language translate
# Only discovered language
puts yandex.translate("Привет")
puts yandex.last_translate

list of translation directions
yandex.get_langs_update("en")
puts yandex.get_langs
```

## Contributing

https://github.com/Makvik/yandex_translate
