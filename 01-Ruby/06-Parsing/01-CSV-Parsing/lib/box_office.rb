# Encoding: utf-8
require 'csv'
require "date"


def most_successfull(number, max_year, file_name=nil)
  #TODO: return the number most successfull movies max_year$


  csv_options = { col_sep: ',', headers: :first_row}
  filepath    = '/Users/thomasceccaldi/code/thomasceccaldi/promo-3-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv'

  successfull_movies = []

  CSV.foreach(filepath, csv_options) do |row|


    if row["year"].to_i < max_year

      successfull_movies << {name: row[0], year: row[1].to_i, earnings: row[2].to_i}
    end
  end

  successfull_movies.sort! { |row| row["earnings"].to_i }

  successfull_movies.take(number)

end
