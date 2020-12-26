# == Schema Information
#
# Table name: countries
#
#  name        :string       not null, primary key
#  continent   :string
#  area        :integer
#  population  :integer
#  gdp         :integer

require_relative './sqlzoo.rb'

def highest_gdp
  # Which countries have a GDP greater than every country in Europe? (Give the
  # name only. Some countries may have NULL gdp values)
  execute(<<-SQL)
  SELECT
    name
  FROM
    countries
  WHERE
    gdp > (
      SELECT
        MAX(gdp)
      FROM
        countries
      WHERE
        continent = 'Europe'
      )
  SQL
end

def largest_in_continent
  # Find the largest country (by area) in each continent. Show the continent,
  # name, and area.

  # This can be repharsed as "select the country details from world where the area is greater than or equal to the area of all countries where the continent is the same”.

  # You want to use x.continent=y.continent because you only want to compare the country name of an instance from x with the country name of an instance from y if they share the same continent.

  execute(<<-SQL)
  SELECT
    continent, name, area
  FROM
    countries x
  WHERE
    area >= ALL (
      SELECT
        area
      FROM
        countries y
      WHERE
        x.continent = y.continent
    )

  SQL
end

def large_neighbors
  # Some countries have populations more than three times that of any of their
  # neighbors (in the same continent). Give the countries and continents.
  execute(<<-SQL)
    SELECT
      name, continent
    FROM
      countries x
    WHERE
      population > ALL (
        SELECT
          population*3
        FROM
          countries y
        WHERE
          x.continent = y.continent
        AND
          y.name != x.name
      )
  SQL
end
