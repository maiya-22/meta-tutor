class Tutorial < ApplicationRecord
    has_many :videos, dependent: :destroy
    has_many :chapters, dependent: :destroy
    has_many :questions, dependent: :destroy
    belongs_to :user
    has_many :tags, through: :tags_tutorials
end
