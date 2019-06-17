$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "sss_sku/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "sss_sku"
  spec.version     = SssSku::VERSION
  spec.summary     = "Automatic SKU generator for Spree Social Sales."
  spec.description = "Use this gem to automatic SKU generation for your site products and variants."

  spec.authors     = ["MateoLa"]
  spec.email       = ["mateo.laino@gmail.com"]
  spec.homepage    = "https://github.com/MateoLa"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"
  spec.add_dependency "spree", "~> 3.7"
  spec.add_dependency "spree_social_sales", "~> 1.0" 

end
