class Status < ActiveRecord::Migration
  def change
    create_table :status do |t|
      t.timestamps
    end
  end
end
