class Character

  attr_accessor :actor, :movie, :show

  @@all = []

  def initialize(actor, movie: nil, show: nil)
    @actor = actor
    @movie = movie
    @show = show
    @@all << self
  end

  def self.all
    @@all
  end


  #most_appearances
  # should return which character of film/television appears in the most films or tv shows
  def most_appearances
    Character.all.sort_by { |character| character }
  end

end
