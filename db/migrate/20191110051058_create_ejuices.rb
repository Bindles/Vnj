class CreateEjuices < ActiveRecord::Migration[6.0]
  def change
    create_table :ejuices do |t|
      t.string :name
      t.string :fp
      t.string :flavor
      t.text :desc
      t.integer :rating

      t.timestamps
    end
  end
end
