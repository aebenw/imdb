class Show

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
    Character.all.select { |s| s.show == self }
  end

  #find actor
  def actors
    self.characters.map { |a| a.actor }
  end

  #on_the_big_screen
  # should return TV shows that share the same name as a movie
  def on_the_big_screen
    movie_list = Movie.list_movies
    Show.all.select { |show| movie_list.include?(show.name) }
  end

end
