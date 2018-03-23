require "./resources.rb"
require "./paths.rb"

# Prompts the user for their name
print "What is your name: "
# Stores the user input to the variable name
name = gets.chomp
# Creates a new player with the stored name
player1 = Player.new(name)
# Calls the start function, which displays a message to the player and uses
# their name in the introduction
start(player1.name)
# Game loop, so long as the player hasn't failed to befriend 4 zombies
# this loop continues, until they do.
until player1.poppers == 4
  # Creates a new zombie friend for the player to meet
  zombie = ZombieFriends.new
  # Calls the find_friend function, which displays who you met, and what
  # party supply they are carrying
  find_friend(zombie.name, zombie.has)
  # Creates a new symbol to show how many tries the player has made
  # to befriend the zombie friend that they've found.
  try_befriending = 0
  # Creates a new symbol to show if the zombie was befriend
  befriended = false
  # Loop for players to try befriending the zombie they've found
  while try_befriending < 3
    # Calls the print_options function, which displays what the player
    # can do to befriend the zombie.
    print_options
    # Prompts user for their input
    print ">>> "
    # Stores the user's input to the variable attempt
    attempt = gets.chomp
    # Converts the value stored in attempt to all lower case
    attempt.downcase!
    # Compates the value stored in attempt by using the check function.
    # If it returns true, then it turns befriended to true and try_befriending
    # to 4 to exit the loop. If not, then it incrememnts the try_befriending
    # variable by one, and calls the failed function using the zombie's name
    if check(attempt, zombie.likes)
      befriended = true
      try_befriending = 4
    else
      try_befriending += 1
      failed(zombie.name)
    end
  end
  # If the zombie was befriended adds the zombie to the player's list of friends
  # then calls the make friend function using the zombie's name and what they
  # have. Afterwards, the player's points are incremented based on what the
  # zombie friend is holding. If the zombie was not befriended, then the
  # number of poppers the player's stepped on is incremented and the
  # zombie friend leaves
  if befriended
    player1.add_friend(zombie.name)
    make_friend(zombie.name, zombie.has)
    player1.points += get_points(zombie.has)
  else
    player1.poppers += 1
    fail_befriending(zombie.name, zombie.has, player1.poppers)
  end
end

# Displays the following text to show that the party has started
puts "-------------------------------------------------------------------------"
puts "                            PARTY TIME!!!!"
puts "Party Guests:"
# Displays all the friends that the player has made before the party
player1.print_friends
# Displays the end message for the game, based on the player's score
party(player1.points, player1.name)
