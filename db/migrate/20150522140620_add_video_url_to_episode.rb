class AddVideoUrlToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :video_url, :string
  end
end
