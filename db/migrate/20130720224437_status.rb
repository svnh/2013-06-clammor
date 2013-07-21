class Status < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :user_id
      t.string :content
      t.timestamps
    end
  end
end
