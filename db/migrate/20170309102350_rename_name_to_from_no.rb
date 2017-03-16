class RenameNameToFromNo < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :froms, :name, :from_no
  end

  def self.down
    rename_column :froms, :from_no, :name
  end
end
