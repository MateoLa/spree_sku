module SssSku
  class Engine < ::Rails::Engine

    def self.spree_available?
      @@spree_available ||= ::Rails::Engine.subclasses.map(&:instance).map { |e| e.class.to_s }.include?('Spree::Core::Engine')
    end

  end
end
