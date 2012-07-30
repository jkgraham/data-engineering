class Sale < ActiveRecord::Base
	belongs_to :import
	belongs_to :customer
	belongs_to :merchant
	belongs_to :item

	attr_accessible :quantity, :total
end