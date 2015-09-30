namespace :todo do

  desc "Delete ToDos older than seven days"
  task delete_todos: :environment do
    Todo.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

end
