class Tweet < ActiveRecord::Base

  # The following method is a class method, which means it's related to the Tweet object, rather than an instance of that object,
  # so we call Tweet.process rather than the .process method on a Tweet.

  def self.process
    # This first line uses the Twitter gem to search for @belfastruby, tells it to return 100 results and to include media
    # It also places the returned Ruby array into the @tweets instance variable
    search = JSON.parse(Twitter.search("#buildconf", :rpp => 100, :include_entities => true).to_json)

    # This bit loops through each of the objects in the Tweets array and calls find_or_create_by_id on our Tweet class.
    # This checks to see if it already exists in the database by checking the ID. If it doesn't it then it will save them. 
    # I'm also passing in some attributes for it to save in the database
    if search
      tweets = search['results']
      tweets.each do |t|
        Tweet.find_or_create_by_guid(
          :text => t['text'], 
          :user => t['from_user'], 
          :profile_image_url => t['profile_image_url'], 
          :posted_at => t['created_at'],
          :guid => t['id_str']
        )
      end
    end
  end

end
