require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_i = 0
  while director_i < nds.length do
    director_name = nds[director_i][:name]
    result[director_name] = gross_for_director(nds[director_i])
    director_i += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_gross = 0
  movies_i = 0
  while movies_i < director_data[:movies].length do
    total_gross += director_data[:movies][movies_i][:worldwide_gross]
    movies_i += 1
  end
  total_gross
end
