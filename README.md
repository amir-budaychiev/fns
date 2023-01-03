# Fns ruby client

Gem implements API with Federal Tax services of Russia.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fns-ruby-client', require: 'fns_client'
```

Then:

    $ bundle install

## Examples

Запрос по ФИО (ИП):

```ruby
FnsClient.new('Иванов Иван Иванович').call
```

Запрос по ИНН/ОГРН (ЮЛ):

```ruby
FnsClient.new('1112223334').call
```

Запрос по ИНН/ОГРН (ИП):

```ruby
FnsClient.new('1113334449').call
```

## Sources

[Официальный сайт ЕГРЮЛ/ЕГРИП ФНС](https://egrul.nalog.ru/index.html)

[Official website of the Russian Federal Tax Service](https://egrul.nalog.ru/index.html)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/actie/fns-ruby-client.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).