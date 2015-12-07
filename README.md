# YandexTranslate

Library for Yandex Translate API | Библиотека для API Яндекс.Переводчика

## Installation

Add this line to your application's Gemfile:


gem 'yandex_translate'


And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yandex_translate

## Usage

Api Key see on https://tech.yandex.com/translate/

```ruby
  yandex = YandexTranslate::Client.new(Api_Key)
```


list of translation directions (English default)

```ruby
  yandex.get_langs
  or
  yandex.get_langs("en")
```


Language detection

```ruby
yandex.detect 'Hello'
```

Language translate

```ruby
  # auto detect language
  yandex.translate 'Hello', 'fr'
  # with the direction of translation
  yandex.translate 'Hello', 'en-fr'
  # with the direction of translation and text format
  yandex.translate 'Hello', 'en-fr', 'plain'
  
  # auto detect language
  yandex.translate_from_hash 'Hello', to: 'fr'
  # with the direction of translation
  yandex.translate_from_hash 'Hello', from: 'en', to: 'fr'
  # with the direction of translation and text format
  yandex.translate_from_hash 'Hello', from: 'en', to: 'fr', format: 'plain'
```

## Contributing

https://github.com/Makvik/yandex_translate
