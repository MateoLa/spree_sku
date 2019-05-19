module SpreeSku
  class Engine < ::Rails::Engine

    def self.spree_backend_available?
      @@spree_backend_available ||= ::Rails::Engine.subclasses.map(&:instance).map { |e| e.class.to_s }.include?('Spree::Backend::Engine')
    end

  end
end
