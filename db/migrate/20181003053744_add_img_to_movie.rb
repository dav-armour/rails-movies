class AddImgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :img, :string
  end
end
