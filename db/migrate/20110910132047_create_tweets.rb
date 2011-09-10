class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :screen_name
      t.text :content
      t.string :name
      t.string :photo_url

      t.timestamps
    end
  end
end
