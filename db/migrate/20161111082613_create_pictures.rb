class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.integer :work_id
      t.string :avatar

      t.timestamps
    end
    add_index :pictures, :work_id
  end
end
