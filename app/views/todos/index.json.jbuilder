json.array!(@todos) do |todo|
  json.extract! todo, :id, :name, :user_id
  json.url todo_url(todo, format: :json)
end
