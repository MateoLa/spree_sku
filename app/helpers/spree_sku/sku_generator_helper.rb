require 'securerandom'

module SpreeSku
  module SkuGeneratorHelper

  	def generate_sku
      name = Spree::Store.current.name
      name ||= "SSS"

      name_arr = name.split
      if name_arr.length > 1
      	sku_start = name_arr.map(&:first).join.truncate(4)
      else
        sku_start = name_arr.delete("aeiouAEIOU").truncate(4)
      end
      sku_start = sku_start.upcase

      var_nr = Spree::Variant.last.id + 1
      user_id = spree_current_user.id
      sku = sku_start + "-" + var_nr.to_s + "-" + user_id.to_s + "-" + SecureRandom.urlsafe_base64(4)
  	end

  end
end
