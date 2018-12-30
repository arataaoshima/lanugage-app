class AddColumnDefault < ActiveRecord::Migration
  def change
    change_column_default(:quizzes, :last?, false)
  end
end
