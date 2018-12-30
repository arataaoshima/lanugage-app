class ChangeColmunTypeUsers < ActiveRecord::Migration
  def change
    change_column :users, :user_image, :binary
    add_column :users, :user_image_content_type, :string
  end
end
