def eighties_b_movies
  # List all the movies from 1980-1989 with scores falling between
  # 3 and 5 (inclusive).
  # Show the id, title, year, and score.
  Movie
    .select(:id,:title,:yr,:score)
    .where(yr: 1980..1989)
    .where(score: 3..5)
end

def bad_years
  # List the years in which a movie with a rating above 8 was not released.
  Movie
    .group(:yr) # one column for every year with a bunch of data.
    .having("Max(score) < 8")
    .pluck(:yr)

    # .where.not("yr NOT IN (?)", Movie.select(:yr).where("score > 8").pluck(:yr)).pluck(:yr)
end

def cast_list(title)
  # List all the actors for a particular movie, given the title.
  # Sort the results by starring order (ord). Show the actor id and name.
  Actor
    .joins(:movies)
    .select('actors.id, actors.name')
    .where(movies: {title: title})
    .order('castings.ord')
end

def vanity_projects
  # List the title of all movies in which the director also appeared
  # as the starring actor.
  # Show the movie id and title and director's name.

  # Note: Directors appear in the 'actors' table.
  Movie
    .joins(:actors) #we don't need to join castings because castings is a through.
    .select('movies.id, movies.title, actors.name')
    .where("director_id = actors.id")
    .where("castings.ord = 1") #instead, you can use .where(castings: {ord: 1}). this is the activerecords way.
end

def most_supportive
  # Find the two actors with the largest number of non-starring roles.
  # Show each actor's id, name and number of supporting roles.
  Movie
    .joins(:actors)
    .select('actors.id, actors.name, COUNT(castings.movie_id) as roles')
    .group("actors.id")
    .where("castings.ord != 1")
    .order("COUNT(castings.movie_id) DESC")
    .limit(2)
end
