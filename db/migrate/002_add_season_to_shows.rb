class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
	  create_table :shows do |t|
    	t.string :season
	  end 
	end 
end 