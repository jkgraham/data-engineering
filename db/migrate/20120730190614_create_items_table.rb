class CreateItemsTable < ActiveRecord::Migration
  def change
		create_table :items do |t|
			t.string :description
			t.float :price

			t.datetime :created_at
		end  	
  end
end
