# == Schema Information
#
# Table name: dashboard_ads
#
#  id                     :integer          not null, primary key
#  content                :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  dashboard_campaigns_id :integer
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dashboard_ad, :class => 'Dashboard::Ad' do
  end
end
