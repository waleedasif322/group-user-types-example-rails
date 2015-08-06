class User < ActiveRecord::Base
	self.inheritance_column = :meta_type
  	scope :doctors, -> { where(meta_type: 'Doctor') }
  	scope :patients, -> { where(meta_type: 'Patient') }
  	scope :nurses, -> { where(meta_type: 'Nurse') }
  	
  	def meta_types
    	%w(Doctor Nurse Patient)
  	end
end
