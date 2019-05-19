# SpreeSku
Use this gem to automatically generate SKUs that allow you to uniquely identify your products.<br/>
Developed by VeroLa Srl.

## Usage
If you don't modify spree use this gem directly. In the case you are overriding the new action for the products or the variants controllers assign the sku to your product or variant by "@product.sku = generate_sku" or "@variant.sku = gnerate_sku" in the new action you are overriding.

## Installation
In order to use this gem you need to install spree first.

Add this line to your application's Gemfile:<br/>
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