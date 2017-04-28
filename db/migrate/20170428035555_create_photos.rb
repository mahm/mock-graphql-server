class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.references :album, foreign_key: true
      t.string :title
      t.string :url
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
