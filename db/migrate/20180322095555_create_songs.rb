require_relative '../../config/application'

class CreateSongs < ActiveRecord::Migration[5.0]
  def change
   
    create_table :songs do |t|
    	t.string :song_name
    	t.string :status
     
    end
  end
end