class CreateImportsTable < ActiveRecord::Migration
	def change
		create_table :imports do |t|
			t.string :datafile
			t.integer :record_count

			t.datetime :created_at
		end
	end
end
