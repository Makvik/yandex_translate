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
yandex.detect 'fr'
```

Language translate

```ruby
  yandex.translate 'Car', 'fr'
  yandex.translate 'Car', 'en-fr'
  yandex.translate 'Car', 'fr', 'plain'

  yandex.translate_from_hash 'Car', to: 'fr'
  yandex.translate_from_hash 'Car', from: 'en', to: 'fr'
  yandex.translate_from_hash 'Car', from: 'en', to: 'fr', format: 'plain'
```

## Contributing

https://github.com/Makvik/yandex_translate
