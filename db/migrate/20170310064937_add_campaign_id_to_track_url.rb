class AddCampaignIdToTrackUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :track_urls, :campaign_id, :integer
  end
end
