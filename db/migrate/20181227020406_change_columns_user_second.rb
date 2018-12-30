class ChangeColumnsUserSecond < ActiveRecord::Migration
  def change
    change_column :users, :user_image, :string
  end
end
