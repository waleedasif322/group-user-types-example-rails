class Doctor < User
  	has_many :patient_provider_relations, :as => :provider
  	has_many :patients, :through => :patient_provider_relations, source: :patient#, :source_type => 'Doctor'
  	belongs_to :provider, polymorphic: true
end