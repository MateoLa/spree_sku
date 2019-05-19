# SpreeSku
Use this gem to automatically generate SKUs than allow you to uniquely identify your products.<br/>
Developed by VeroLa Srl.

## Usage
If you don't modify spree use this gem directly. In case you overrides the new action for any product or variant controller, assign the sku to your object by: "@product.sku = generate_sku" or "@variant.sku = generate_sku" when corresponds.

## Installation
In order to use this gem you need to install spree first.

Add this line to your application's Gemfile:
(add it after the line "gem 'spree',...")

```ruby
gem 'spree_sku', github: 'MateoLa/spree_sku'
```

Then execute:
```bash
$ bundle install
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).