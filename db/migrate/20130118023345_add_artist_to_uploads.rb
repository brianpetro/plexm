class AddArtistToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :artist, :string
  end
end
