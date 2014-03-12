class CreateDashboardAds < ActiveRecord::Migration
  def change
    create_table :dashboard_ads do |t|

    	t.string :content

      t.timestamps
    end
  end
end
