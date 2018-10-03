class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :img

      t.timestamps
    end
  end
end
