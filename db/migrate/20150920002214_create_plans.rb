class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
