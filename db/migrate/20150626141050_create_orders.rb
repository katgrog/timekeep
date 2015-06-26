class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :stripe_token
      t.integer :user_id
      t.integer :watch_id

      t.timestamps null: false
    end
    add_index :orders, :user_id
    add_index :orders, :watch_id
  end
end
