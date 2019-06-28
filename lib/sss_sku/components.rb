module SssSku
  class Engine < ::Rails::Engine

    def self.sss_available?
      @@sss_available ||= ::Rails::Engine.subclasses.map(&:instance).map{ |e| e.class.to_s }.include?('SpreeSocialSales::Engine')
    end

  end
end
