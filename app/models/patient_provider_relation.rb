class PatientProviderRelation < ActiveRecord::Base
	belongs_to :provider, class_name: "User", :foreign_key => :provider_id, :polymorphic => true
  	belongs_to :patient#, class_name: "User", :foreign_key => :patient_id
end
