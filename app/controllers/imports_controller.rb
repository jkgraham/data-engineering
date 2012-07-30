class ImportsController < ApplicationController

	def index
	end

	def show
		@import = Import.find(params[:id])
	end

	def new
		@import = Import.new
	end

	def create
		@import = Import.new(params[:import])
		if @import.save
			@import.process
			#render :inline => "DONE: #{@import.sales.count} -- \n<pre>" + @out.to_yaml
			redirect_to @import, notice: "Import saved and processed"
		else
			redirect_to new_import_path, flash: { error: "Couldn't save the import." }
		end
	end

end
