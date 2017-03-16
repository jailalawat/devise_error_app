class CreateTrackingInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :tracking_infos do |t|
      t.integer :sms_send_id
      t.string :ip_address
      t.string :country
      t.string :city
      t.string :state_name
      t.string :full_address

      t.timestamps
    end
  end
end
