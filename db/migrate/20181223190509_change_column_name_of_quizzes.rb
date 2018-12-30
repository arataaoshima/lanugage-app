class ChangeColumnNameOfQuizzes < ActiveRecord::Migration
  def change
    rename_column :quizzes, :last?, :last
  end
end
