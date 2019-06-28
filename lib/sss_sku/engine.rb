require 'sss_sku/components'

module SssSku
  class Engine < ::Rails::Engine

    if sss_available?
    	config.to_prepare do
	      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator.rb")) do |c|
  	      Rails.configuration.cache_classes ? require(c) : load(c)
    	  end
      	ApplicationController.helper(SpreeSku::SkuGeneratorHelper)      
    	end
    end

  end
end
