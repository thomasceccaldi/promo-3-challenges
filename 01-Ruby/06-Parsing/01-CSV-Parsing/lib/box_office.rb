# Encoding: utf-8
require 'csv'
require "date"




def most_successfull(number, max_year, file_name=nil)
  #TODO: return the number most successfull movies max_year$

  csv_options = { col_sep: ',', headers: :first_row}
  filepath    = '/Users/thomasceccaldi/code/thomasceccaldi/promo-3-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv'

  CSV.foreach(filepath, csv_options) do |row|

    successfull_movies = []

    if row[year] < max_year
      successfull_movies = [row["name"]]
      return successfull_movies

    else
      return false
    end

  end

most_successfull(10, 1995)

end
