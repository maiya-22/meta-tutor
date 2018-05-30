class Tutorial < ApplicationRecord
    has_many :videos
    has_many :chapters
    has_many :questions
    belongs_to :user
end
