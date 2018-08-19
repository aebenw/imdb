class Actor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #find actors
  def characters
    Character.all.select { |a| a.actor == self }
  end

  #find movies
  def movies
    self.characters.map { |m| m.movie }
  end

  #find shows
  def shows
    self.characters.map { |s| s.show }
  end

  # .most_characters
  # should return which actor has the most different characters played. (probably meryl streep)
  def self.most_characters
    self.all.sort_by { |c|  c.characters.size }.last
  end

end
