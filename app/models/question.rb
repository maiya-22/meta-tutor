class Question < ApplicationRecord
    belongs_to :tutorial
    has_many :answers
    belongs_to :user
end
 