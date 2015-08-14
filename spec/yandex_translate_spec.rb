require_relative '../lib/yandex_translate.rb'

key = "trnsl.1.1.20150813T202035Z.0bf93fe64f14cffb.f22ba458304ebe91b9d659cc2a381c694edd9d74"

describe 'YandexTranslate' do
  it 'should exists' do
      YandexTranslate::Client.new(key)
  end
  it 'get_langs' do
    YandexTranslate::Client.new(key).get_langs.values_at("dirs").should_not include(nil)
  end
  it 'translate' do
    YandexTranslate::Client.new(key).translate("Привет").values_at("text").should_not include(nil)
  end
end