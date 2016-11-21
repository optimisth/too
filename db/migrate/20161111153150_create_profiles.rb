class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :list
      t.text :worked_at
      t.text :title

      t.timestamps
    end
  end
end
