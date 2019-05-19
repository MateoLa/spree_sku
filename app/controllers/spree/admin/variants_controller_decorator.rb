Spree::Admin::VariantsController.class_eval do
  include SpreeSku::SkuGeneratorHelper

  def new
    @variant = Spree::Variant.new
    @variant.sku = generate_sku
  end

end
