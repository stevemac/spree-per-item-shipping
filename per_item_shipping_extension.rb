class PerItemShippingExtension < Spree::Extension
  version "1.0"
  description "Implements a per item shipping cost"
  url "http://github.com/stevemac/spree-per-item-shipping"

  def activate
    # Add a "Per Item Shipping" field to the product.
    Variant.additional_fields += [
      {:name => 'Per Item Shipping', :only => [:product], 
	   :format => '%3.2f'}
    ]
  end #activate
 
end
