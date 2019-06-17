Spree::Account::VariantsController.class_eval do
  include SpreeSku::SkuGeneratorHelper

  def new
    @variant = Spree::Variant.new
    @variant.cost_price = @product.cost_price
    @variant.price = @product.price
    @variant.sku = generate_sku
  end

end
