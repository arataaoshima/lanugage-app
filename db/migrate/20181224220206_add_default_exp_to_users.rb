class AddDefaultExpToUsers < ActiveRecord::Migration
  def change
    change_column :users, :exp, :intefer, :default => 0
  end
end
