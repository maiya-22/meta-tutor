class Comment < ApplicationRecord
    belongs_to :answer, required: false
    belongs_to :question, required: false
end
