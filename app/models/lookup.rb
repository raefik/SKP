class Lookup < ActiveRecord::Base
	self.table_name = "tblLookup"

	#belongs_to :registration, :foreign_key => "Lookup_Code", :primary_key =>"Register_Type"
end
