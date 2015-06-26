class AddUserIdToWatches < ActiveRecord::Migration
  def change
  	add_column :watches, :user_id, :integer 
  	add_index :watches, :user_id 
  end
end
