class AlterColumnProfessionDescription < ActiveRecord::Migration[5.0]
  def change
    rename_column :professions, :profession_description, :description
  end
end
