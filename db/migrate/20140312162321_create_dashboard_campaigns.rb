class CreateDashboardCampaigns < ActiveRecord::Migration
  def change
    create_table :dashboard_campaigns do |t|

    	t.string :name
    	t.text :description

      t.timestamps
    end
  end
end
