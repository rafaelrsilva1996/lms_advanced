class AlterColumnProfessionDescription < ActiveRecord::Migration[5.0]
  def change
    rename_column :professions, :description, :description
  end
end
