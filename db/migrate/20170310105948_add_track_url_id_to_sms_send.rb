class AddTrackUrlIdToSmsSend < ActiveRecord::Migration[5.0]
  def change
    add_column :sms_sends, :track_url_id, :integer
  end
end
