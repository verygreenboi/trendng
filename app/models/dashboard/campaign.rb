# == Schema Information
#
# Table name: dashboard_campaigns
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Dashboard::Campaign < ActiveRecord::Base
end
