class AddSelectToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :select1, :string
    add_column :quizzes, :select2, :string
    add_column :quizzes, :select3, :string
    add_column :quizzes, :select4, :string
  end
end
