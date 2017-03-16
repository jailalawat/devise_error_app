class AddFromIdToSmsSend < ActiveRecord::Migration[5.0]
  def change
    add_column :sms_sends, :from_id, :integer
  end
end
