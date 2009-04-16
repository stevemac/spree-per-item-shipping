class FlatRateShippingConfiguration < Configuration

  preference :per_item_amount, :decimal, :default => 0.0 
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
