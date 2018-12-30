class AddPhtoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_image, :string
    add_column :users, :image_data, :binary
  end
end
