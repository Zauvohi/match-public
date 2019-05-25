class AddVideoDataToActivity < ActiveRecord::Migration[5.1]
  def change
  	add_column :activities, :video_data, :text
  end
end
