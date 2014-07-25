require 'sqlite3'

# opens the database
DATABASE_PATH = "lib/db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist

  array = db.execute( "SELECT t.Name, z.Name, a.Title FROM Track t JOIN Album a ON (t.AlbumId = a.AlbumId) JOIN Artist z ON (a.ArtistId = z.ArtistId);")

end


def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)

  hash = {}

  #category

  array = db.execute( "SELECT * FROM Genre ;")

  selection = array.select{ |x| x[0] == category }

  hash["category"] = selection.first[1]

  #number_of_songs

  array1 = db.execute( "SELECT COUNT(*), GenreId FROM Track t GROUP BY GenreId ; ")
  selection1 = array1.select{ |x| x[1] == category }
  hash["number_of_songs"] = selection1.first.first

  #average song length

  array2 = db.execute("SELECT AVG (Milliseconds/60000) FROM Track t GROUP BY GenreId;")
  selection2 = array2.map!{ |x| x.first.round(1)}
  hash["avg_length"] = selection2[category-1]

  return hash
  p hash

end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists

  db.execute(
    "SELECT ar.Name,COUNT(*) as c
                FROM Track t, Genre g, Artist ar, Album al
                WHERE t.GenreId = g.GenreId
                AND t.AlbumId = al.AlbumId
                AND al.ArtistId = ar.ArtistId
                AND g.Name = 'Rock'
                GROUP BY ar.Name
                ORDER BY c DESC
                LIMIT 5;"
 ).to_h

end

