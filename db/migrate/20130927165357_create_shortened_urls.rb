class CreateShortenedUrls < ActiveRecord::Migration
  def change
    create_table :shortened_urls do |t|
      t.string :short
      t.string :original

      t.timestamps
    end
  end
end
