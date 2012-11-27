class SiteController < ApplicationController

  def index
    # This is calling the process action to get new tweets
    Tweet.process

    # Here we're looking up all of our tweets, ordering them by the posted_at attribute and putting them into the tweets array.
    # This is inside the index action, so our index view in the views/site folder will use this.
    @tweets = Tweet.order("posted_at DESC")
  end

end
