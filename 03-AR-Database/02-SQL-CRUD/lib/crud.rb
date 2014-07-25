require 'sqlite3'

def create_scheme(db)
  #TODO: create your db scheme
  sql = %q{
    CREATE TABLE IF NOT EXISTS posts
    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR(100),
      source_url VARCHAR (500),
      date DATE,
      rating INTEGER
    );
  }

  db.execute(sql)

end

def create_post(db, post)
  #TODO: add a new post to your db
  #post = { name: name, source_url: source_url, date: Time.now, rating: rating }

  db.execute("
    INSERT INTO posts (name, source_url, date, rating)
    VALUES(
      '#{post[:name]}',
      '#{post[:source_url]}',
      '#{post[:date]}',
      '#{post[:rating]}'
      )
    ")

end

def get_posts(db)
   #TODO: list all posts
  p db.execute("SELECT * FROM posts;")

end

def get_post(db, id)
  #TODO: get a specific post
  p db.execute("SELECT * FROM posts WHERE id = #{id};").first

end

def update_post(db, id, name)
	#TODO: update a post's name in your db

  db.execute("UPDATE posts SET name = '#{name}' WHERE id = #{id}")

end

def delete_posts(db)
  #TODO: delete a post in your db
  db.execute("DELETE FROM posts;")
end

def delete_post(db, id)
  #TODO: delete a specific post in your db
  p db.execute("DELETE FROM posts WHERE id = #{id};")

end