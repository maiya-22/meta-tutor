class Video < ApplicationRecord
    belongs_to :tutorial,  required: false
    has_many :questions
end
