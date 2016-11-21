class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.text :title
      t.integer :category_id
      t.text :worked_at
      t.text :content

      t.timestamps
    end
    add_index :works, :category_id
  end
end
