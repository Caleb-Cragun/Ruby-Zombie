=begin
Resources file that contains all the logic for the zombie player
and the information about the various undead friends that you will
find on your adventures
=end

=begin
  Player class along with all logic for player characters
=end
class Player
  attr_accessor :name, :poppers, :points

  # Creates a new player, with a name, an empty list of friends, and no popped
  # party poppers. The party poppers are used to determine end of the game
  def initialize(name)
    @name = name
    @friends = []
    @poppers = 0
    @points = 0
  end

  # Prints your friends list. Displays a message if you didn't make
  # any friends, but if you did, the friends are sorted, then displayed
  # to the terminal
  public
  def print_friends
    if @friends.length == 0
      puts "You don't have any friends..."
    else
      @friends.sort!
      @friends.each { |friend| puts friend }
    end
  end

  # Adds a new friend to your friends list. Puts the new friend's name
  # into the array of friends.
  public
  def add_friend(name)
    @friends.push(name)
  end

end

=begin
  Determines which zombie you have found while exploring,  what they like,
  and what they have
=end
class ZombieFriends
  attr_reader :name, :likes, :has

  # Creates a new zombie friend, and using random number generators
  # determines what their name is, what they like, and what they
  # are carrying.
  def initialize
    # Generates a random number between 1 and 12 and stores it in name_number
    name_number = 1 + rand(12)
    # Checks the value in name_number and sets the instance variable of
    # name equal to one of the various names listed
    case name_number
    when 1 then @name = "Cone-head zombie"
    when 2 then @name = "Bucket-head zombie"
    when 3 then @name = "Screen door zombie"
    when 4 then @name = "Newspaper zombie"
    when 5 then @name = "Disco zombie"
    when 6 then @name = "Football zombie"
    when 7 then @name = "Pole-vaulting zombie"
    when 8 then @name = "Bungee zombie"
    when 9 then @name = "Snorkeling zombie"
    when 10 then @name = "Zomboni"
    when 11 then @name = "Bobsled zombie"
    else @name = "Average ordinary everyday zombie"
    end
    # Generates a random number between 1 and 5 and stores it in likes_number
    likes_number = 1 + rand(5)
    # Checks the value in likes_number and sets the instance variable of
    # likes equal to one of the various communication methods listed
    case likes_number
    when 1 then @likes = "moan"
    when 2 then @likes = "scratch"
    when 3 then @likes = "bite"
    when 4 then @likes = "scream"
    else @likes = "shamble"
    end
    # Generates a random number between 1 and 4 and stores it in has_number
    has_number = 1 + rand(4)
    # Checks the value in has_number and sets the instance variable of
    # has equal to one of the various items listed
    case has_number
    when 1 then @has = "cake"
    when 2 then @has = "soda"
    when 3 then @has = "pizza_fondue"
    else @has = "chips"
    end
  end
end
