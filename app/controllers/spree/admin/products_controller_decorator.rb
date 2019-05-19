Spree::Admin::ProductsController.class_eval do
  include SpreeSku::SkuGeneratorHelper

  def new
    @product = Spree::Product.new
    @product.sku = generate_sku
  end

end
