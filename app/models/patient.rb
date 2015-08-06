class Patient < User
	has_many :patient_provider_relations, :as => :provider
	has_many :providers, :through => :patient_provider_relations, source: :provider, :source_type => 'Provider'
end