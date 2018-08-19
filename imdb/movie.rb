class Movie

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #find characters
  def characters
    Character.all.select { |m| m.movie == self }
  end

  #find actors
  def actors
    self.characters.map { |a| a.actor }
  end

  # .most_actors
  # should return the movie which has the most actors in it. this is so the studio knows never to hire that director again because he/she makes expensive movies

  def self.most_actors
    self.all.sort_by { |movie| movie.actors.size }.last
  end

  #get the list of movies
  def self.list_movies
    self.all.map { |movie| movie.name }
  end

end
