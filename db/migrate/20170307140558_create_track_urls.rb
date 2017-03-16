class CreateTrackUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :track_urls do |t|
      t.string :url

      t.timestamps
    end
  end
end
