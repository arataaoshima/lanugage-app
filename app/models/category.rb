class Category < ActiveRecord::Base
    has_many :tables
    has_many :quizzes, through: :tables
    scope :desc, -> { order("created_at DESC") }
    scope :old, -> { where("id = 3") }
    scope :id3, -> { where(id: 3) }
end
