require_relative "crud"

def ask_and_get(param)
  puts "What is the #{param} for your post?"
  gets.chomp
end

db_path = "lib/db/news.sqlite"
db = SQLite3::Database.new(db_path)

create_scheme(db)

while true

  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Read a specific post"
  puts "4. Update a post"
  puts "5. Delete all posts"
  puts "6. Delete a specific post"
  puts "7. Exit"

  # TODO: add other CRUD tasks if you wish!
	choice =  gets.chomp.to_i

	case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now, rating: rating }
    create_post(db, post)
  when 2
    get_posts(db)
  when 3
    id = ask_and_get("post_id")
    get_post(db, id)
  when 4
    id = ask_and_get("post_id")
    name = ask_and_get("name")
    delete_post(db, id, name)
  when 5
    delete_posts(db)
  when 6
    id = ask_and_get("post_id")
    delete_post(db, id)
  when 7
    break
	end

end