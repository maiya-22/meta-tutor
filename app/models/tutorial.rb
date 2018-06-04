class Tutorial < ApplicationRecord
    has_one :video, dependent: :destroy
    has_one :chapters, dependent: :destroy
    has_many :questions, dependent: :destroy
    belongs_to :user,  required: false
    has_many :tags, through: :tags_tutorials
end
