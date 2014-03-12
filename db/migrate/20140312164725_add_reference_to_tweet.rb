class AddReferenceToTweet < ActiveRecord::Migration
  def change
  	add_reference :tweets, :dashboard_ads, index: true
  	add_reference :tweets, :users, index: true
  end
end
