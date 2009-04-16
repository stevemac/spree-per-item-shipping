# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class PerItemShippingExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/per_item_shipping"

  # Please use per_item_shipping/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end

 def activate
    # Add a "Per Item Shipping" field to the product.
    Variant.additional_fields += [
      {:name => 'Per Item Shipping', :only => [:product], 
	   :format => '%3.2f'}
    ]
  end #activate
 
end
