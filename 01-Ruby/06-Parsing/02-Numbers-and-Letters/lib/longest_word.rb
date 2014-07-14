require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters

  Array.new(grid_size) { ("A".."Z").to_a.sample }

end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result

  results = {}

  results[:time] = end_time - start_time

  if check_grid?(attempt, grid)

    traduction = translate(attempt)

    if traduction

        results[:score] = end_time - start_time
        results[:message] = "well done"
        results[:translation] = traduction

    else
      results[:score] = 0
      results[:message] = "not an english word"
    end


  else

    results[:score] = 0
    results[:message] = "not in the grid"

  end

  results

end

def translate(attempt)

  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"

  open(api_url) do |stream|
    definition = JSON.parse(stream.read)

    if definition.has_key?("Error")
      traduction = nil

    else
      traduction = definition["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
    end
    return traduction
  end
end


def check_grid?(attempt, grid)

  attempt_grid = attempt.split("")

  attempt_grid.all? { |letter| attempt_grid.count(letter) <= grid.count(letter) }

end









