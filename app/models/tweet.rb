class Tweet < ActiveRecord::Base

	before_save :load_from_twitter

	def load_from_twitter
		tweet_id = tweet_url.split("/").last
		tweet = Twitter.status(tweet_id)
		self.screen_name = tweet.user.screen_name
		self.name = tweet.user.name
		self.content = tweet.text
		self.background_url = tweet.user.profile_background_image_url
		self.tweeted_at = DateTime.parse(tweet.created_at)
		self.photo_url = tweet.user.profile_image_url
	end

end
