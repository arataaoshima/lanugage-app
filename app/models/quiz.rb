class Quiz < ActiveRecord::Base
    has_many :tables
    has_many :categories, through: :tables
    
scope :old, -> { where("id > 20") }
scope :desc, -> { order("created_at DESC") }
scope :desc_category, -> { joins(:categories).merge(Category.desc) }
scope :category_greetings, -> { joins(:categories).merge(Category.id3)}
end
