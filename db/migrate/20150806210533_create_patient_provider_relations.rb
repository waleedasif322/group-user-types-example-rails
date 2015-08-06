class CreatePatientProviderRelations < ActiveRecord::Migration
  def change
    create_table :patient_provider_relations do |t|
      t.integer :patient_id
      t.integer :provider_id
      t.string :provider_type

      t.timestamps null: false
    end
  end
end
