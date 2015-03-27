json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :title, :description, :user_id, :is_attempted, :is_complete, :num_of_questions, :category_id, :level_id
  json.url quiz_url(quiz, format: :json)
end
