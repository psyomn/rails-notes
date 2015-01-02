class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :isbn
      t.boolean :is_recommended
      t.integer :price
      t.text :short_desc

      t.timestamps
    end
  end
end
