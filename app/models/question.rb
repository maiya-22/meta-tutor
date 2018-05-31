class Question < ApplicationRecord
    belongs_to :tutorial
    belongs_to :chapter
    belongs_to :video
    has_many :answers, dependent: :destroy
    has_many :comments, dependent: :destroy
    belongs_to :user
end
 