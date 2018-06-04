class Answer < ApplicationRecord
    belongs_to :question, required: false
    belongs_to :user, required: false
    has_many :comments
end
