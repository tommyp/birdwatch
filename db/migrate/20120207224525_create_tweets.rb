class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :text
      t.string :user
      t.string :id
      t.string :profile_image_url

      t.timestamps
    end
  end
end
