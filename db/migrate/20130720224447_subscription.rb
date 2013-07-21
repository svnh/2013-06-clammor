class Subscription < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|

      t.timestamps
    end
  end
end
