$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "spree_sku/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "spree_sku"
  spec.version     = SpreeSku::VERSION
  spec.summary     = "Automatic SKU generator for Spree."
  spec.description = "Use this gem to generate a uniq sku identifier for your products and variants."

  spec.authors     = ["MateoLa"]
  spec.email       = ["mateo.laino@gmail.com"]
  spec.homepage    = "https://github.com/MateoLa"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"
end
