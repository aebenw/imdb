require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = Actor.new("John")
maria = Actor.new("Maria")
bob = Actor.new("Bob")

spiderman = Movie.new("Spiderman")
ironman = Movie.new("Ironman")
strange = Movie.new("Dr Strange")

dexter = Show.new("Dexter")
gotham = Show.new("Gotham")
shameless = Show.new("Shameless")
spider = Show.new("Spiderman")

james = Character.new(john, movie: spiderman, show: shameless)
ken = Character.new(bob, movie: spiderman)
ben = Character.new(maria, movie: strange)
rock = Character.new(john, movie: ironman)
jimmy = Character.new(john, show: spider)
avi = Character.new(john, show: gotham)
alex = Character.new(maria, show: shameless)


Pry.start
