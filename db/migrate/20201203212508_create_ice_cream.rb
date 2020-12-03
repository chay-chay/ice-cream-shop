class CreateIceCream < ActiveRecord::Migration
  def change
    create_table :ice_creams do |t| #plurized - name table plural
      t.string :flavor
      t.integer :rating
      t.string :toppings
      t.integer :user_id #belongs_to
    end
  end
end
