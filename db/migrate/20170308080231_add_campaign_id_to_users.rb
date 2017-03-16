class AddCampaignIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :campaign_id, :integer
  end
end
