class Comment < ApplicationRecord
    belongs_to :answer, required: false
    belongs_to :question, required: false
    belongs_to :user, required: true
end
