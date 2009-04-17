module Spree
  module PerItemShipping
    class Calculator
      def calculate_shipping(shipment)
          total = 0.0
          shipment.order.line_items.each { |line| 
             amt = line.variant.product.per_item_shipping
             qty = line.quantity
             total += (amt * qty)
          }
          return total 
      end
    end
  end
end
