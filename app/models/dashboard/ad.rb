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

class Dashboard::Ad < ActiveRecord::Base
end
