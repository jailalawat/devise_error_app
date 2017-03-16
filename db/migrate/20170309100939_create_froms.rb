class CreateFroms < ActiveRecord::Migration[5.0]
  def change
    create_table :froms do |t|
      t.string :name
      t.integer :campaign_id

      t.timestamps
    end
  end
end
