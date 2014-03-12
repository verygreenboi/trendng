# == Schema Information
#
# Table name: tweets
#
#  id               :integer          not null, primary key
#  created_at       :datetime
#  updated_at       :datetime
#  dashboard_ads_id :integer
#  users_id         :integer
#

class Tweet < ActiveRecord::Base
end
