class Movie < ApplicationRecord
  belongs_to :director,
    class_name: :Actor,
    foreign_key: :director_id,
    primary_key: :id

  has_many :castings,
    class_name: :Casting,
    foreign_key: :movie_id,
    primary_key: :id

  has_many :actors,
    through: :castings,
    source: :actor
end

def self.directors_of_the_year(year)
  movies = Movie.where(yr: year).where('score > 7.5')
  movies.each do |movie|
    p movie.director.name
  end
end

def self.directors_of_the_year_optimized(year)
  movie = Movie.includes(:director).where(yr: year).where('score > 7.5')
  movies.each do |movie|
    p movie.director.name
  end
end

# optimized is an n + 1 query because we don't insert for a search everytime.