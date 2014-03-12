# == Schema Information
#
# Table name: emails
#
#  id         :integer          not null, primary key
#  from       :string(255)
#  to         :string(255)
#  subject    :string(255)
#  direction  :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  users_id   :integer
#

class Email < ActiveRecord::Base
end
