class AddReferenceToDashboardAds < ActiveRecord::Migration
  def change
  	add_reference :dashboard_ads, :dashboard_campaigns, index: true
  end
end
