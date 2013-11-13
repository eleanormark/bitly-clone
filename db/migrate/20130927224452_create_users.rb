class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  add_column :shortened_urls, :user_id, :integer
  end
end
