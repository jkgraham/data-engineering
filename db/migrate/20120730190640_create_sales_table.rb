class CreateSalesTable < ActiveRecord::Migration
  def change
		create_table :sales do |t|
			t.integer :quantity
			t.float :total

			t.belongs_to :import
			t.belongs_to :customer
			t.belongs_to :merchant
			t.belongs_to :item

			t.datetime :created_at
		end  	
  end
end
