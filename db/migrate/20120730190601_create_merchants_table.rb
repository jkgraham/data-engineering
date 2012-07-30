class CreateMerchantsTable < ActiveRecord::Migration
  def change
		create_table :merchants do |t|
			t.string :name
			t.string :address

			t.datetime :created_at
		end
	end
end
