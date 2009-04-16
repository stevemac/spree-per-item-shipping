class CreatePerItemShipping < ActiveRecord::Migration
    def self.up
        change_table :products do |t|
            t.decimal :per_item_shipping, :precision => 8, :scale => 2, :default => 0
        end
    end
end
