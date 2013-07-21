class Group < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :motto
      t.timestamps
    end
  end
end
