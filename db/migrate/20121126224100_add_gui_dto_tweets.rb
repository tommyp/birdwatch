class AddGuiDtoTweets < ActiveRecord::Migration
  def up
    add_column :tweets, :guid, :string
  end

  def down
    remove_column :tweets, :guid, :string
  end
end
