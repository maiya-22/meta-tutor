class Question < ApplicationRecord
    belongs_to :tutorial,  required: false
    belongs_to :chapter,  required: false
    belongs_to :video,  required: false
    has_many :answers, dependent: :destroy
    has_many :comments
    belongs_to :user
end
 