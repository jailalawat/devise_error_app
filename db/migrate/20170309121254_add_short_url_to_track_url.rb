class AddShortUrlToTrackUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :track_urls, :short_url, :string
  end
end
