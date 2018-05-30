json.extract! question, :id, :title, :content, :status, :level, :page, :time, :user_id, :tutorial_id, :created_at, :updated_at
json.url question_url(question, format: :json)
