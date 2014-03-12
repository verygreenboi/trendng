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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet do
  end
end
