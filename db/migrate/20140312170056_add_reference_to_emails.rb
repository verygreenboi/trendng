class AddReferenceToEmails < ActiveRecord::Migration
  def change
  	add_reference :emails, :users, index: true
  end
end
