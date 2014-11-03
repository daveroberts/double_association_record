class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :magazine
      t.references :reader
      t.timestamps
    end
  end
end
