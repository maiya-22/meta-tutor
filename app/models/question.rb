class Question < ApplicationRecord
    belongs_to :tutorial
    has_many :answers
    has_many :comments
    belongs_to :user
end
 