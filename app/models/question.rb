class Question < ApplicationRecord
    belongs_to :tutorial
    belongs_to :user
end
