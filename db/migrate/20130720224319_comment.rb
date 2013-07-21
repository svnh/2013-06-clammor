class Comment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end

# t.foreign_key :customer_id, :customers, :id
# end
# # or
# add_foreign_key(:orders, :customer_id, :customers, :id)
