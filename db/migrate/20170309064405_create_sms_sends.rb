class CreateSmsSends < ActiveRecord::Migration[5.0]
  def change
    create_table :sms_sends do |t|
      t.integer :campaign_id
      t.text :message
      t.text :message_uuid

      t.timestamps
    end
  end
end
