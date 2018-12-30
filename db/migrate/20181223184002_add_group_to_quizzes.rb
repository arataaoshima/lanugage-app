class AddGroupToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :last?, :boolean
  end
end
