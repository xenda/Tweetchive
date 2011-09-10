class AddTweetUrlAndTweetedAtAndBackgroundUrlToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :tweet_url, :string
    add_column :tweets, :tweeted_at, :datetime
    add_column :tweets, :background_url, :string
  end
end
