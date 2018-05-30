class Tutorial < ApplicationRecord
    has_many :videos
    has_many :chapters
    belongs_to :user
end
