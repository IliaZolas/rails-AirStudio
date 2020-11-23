class CreateStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :studios do |t|
      t.string :title
      t.string :address
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
