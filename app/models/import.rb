class Import < ActiveRecord::Base
	require 'csv'
	attr_accessible :datafile, :record_count

	mount_uploader :datafile, DatafileUploader
	
	has_many :sales

	def process
		@dump = []
		CSV.foreach(datafile.current_path, :headers => true, :col_sep => "\t") do |r|
		  item = Item.find_or_create_by_description_and_price(r['item description'], r['item price'])

		  sale = Sale.new({quantity: r['purchase count']})
		  sale.import = self
		  sale.customer = Customer.find_or_create_by_name(r['purchaser name'])
		  sale.merchant = Merchant.find_or_create_by_name_and_address(r['merchant name'], r['merchant address'])
		  sale.item = item
		  sale.total = item.price * sale.quantity
		  sale.save!

		  @dump << sale
		end
		@dump
	end

end