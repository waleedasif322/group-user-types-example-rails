class AddMetaTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :meta_type, :string
  end
end
