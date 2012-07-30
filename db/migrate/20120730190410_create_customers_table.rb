class CreateCustomersTable < ActiveRecord::Migration
  def change
		create_table :customers do |t|
			t.string :name

			t.datetime :created_at
		end  	
  end
end
