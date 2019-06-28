Spree::Sss::ProductsController.class_eval do
  include SpreeSku::SkuGeneratorHelper

  def new
    @product = Spree::Product.new
    @product.user = @user
    params[:available_on] = DateTime.now.to_date
    first_ship = Spree::ShippingCategory.first
    @product.shipping_category = first_ship
    @product.master.sku = generate_sku
  end

end