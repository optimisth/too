class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|
      t.text :home
      t.text :website
      t.text :email
      t.text :address

      t.timestamps
    end
  end
end
