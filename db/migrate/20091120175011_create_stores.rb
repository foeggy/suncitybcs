class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.string :name
      t.string :phone
      t.string :street
      t.string :shoppingcenter
      t.string :city
      t.string :state
      t.string :zip
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end

  def self.down
    drop_table :stores
  end
end
