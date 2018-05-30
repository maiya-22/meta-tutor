json.extract! answer, :id, :content, :votes, :approved, :question_id, :user_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)
