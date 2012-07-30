class Import < ActiveRecord::Base
	attr_accessible :datafile, :record_count

	mount_uploader :datafile, DatafileUploader
end