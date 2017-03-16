class RemoveCampaignIdFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :campaign_id, :integer
  end
end
