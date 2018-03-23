=begin
Contains different functions for different events that happen throughout
the course of the game.
=end

# Displays the start message to the player using the name given to it in
# the text of the introduction
public
def start(name)
  puts "-----------------------------------------------------------------------"
  puts "You come to underground. You claw your way to the surface. The sun"
  puts "radiates down. Behind you lays a headstone with #{name} "
  puts "engraven on it. You look around to see other zombies shambling about "
  puts "clinging to various items of food. You remember your past life throwing"
  puts "a party with those items of food that they are holding. So you decide"
  puts "that you're going to throw a party. I mean, today's a great day to be"
  puts "alive! So what are you waiting for? Go find some friends and collect"
  puts "party supplies and throw the biggest party that this apocolypse"
  puts "has ever seen zombies throw!"
  # Pauses for 2 seconds so the user can read the intro
  sleep 2
end

# Displays the zombie friend that was encountered, using their name and
# what they are holding in the text
public
def find_friend(friend, has)
  puts "-----------------------------------------------------------------------"
  puts "You go exploring and find #{friend} who happens to be"
  puts "holding #{has}. See if you can befriended them."
  # Pauses for 2 seconds so the user can see who they found
  sleep 2
end

# Displays the options that you can use to communicate with zombies
public
def print_options
  puts "-----------------------------------------------------------------------"
  puts "Communicate by bite, scream, moan, scratch, or shamble?"
end

# Displays a message that the zombie friend you met didn't understand what
# you were attempting to convey and uses the zombie's name in the text
public
def failed(friend)
  puts "-----------------------------------------------------------------------"
  puts "#{friend} doesn't understand what you're trying to say."
  puts "Maybe you should say something else to them..."
  # Pauses for 2 seconds so the user can read the text
  sleep 2
end

# Displays that the zombie friend walked away and took the party item with them.
# Then shows how many poppers the player has stepped on. Uses the zombie's name,
# item they had, and how many party poppers the player has stepped on.
public
def fail_befriending(friend, has, poppers)
  puts "-----------------------------------------------------------------------"
  puts "#{friend} shambles off, having not understood what you were trying"
  puts "to say, taking the #{has} they have in their hands. You continue"
  puts "your shambling to try to find a new friend, but in your depressed"
  puts "shambling, you step on a party popper. The loud crack echoes around"
  puts "the block. The zombies are getting excited. You've stepped on #{poppers}"
  puts "so far. Watch your step!"
  # Pauses for 2 seconds so the user can read the text
  sleep 2
end

# Displays a message that the zombie friend gave you the item and will be
# attending the party. Uses the zombie's name, and what they have in the text
public
def make_friend(friend, has)
  puts "-----------------------------------------------------------------------"
  puts "#{friend} understands what you mean, and hands you the #{has}"
  puts "that they have. #{friend} is looking forward to the party later."
  # Pauses for 2 seconds so the user can read the text
  sleep 2
end

# Displays a message based on the number of points that the player got, then
# displays a thank you message to the player. Uses the player's name and score
# in the text
public
def party(points, name)
  puts "-----------------------------------------------------------------------"
  if points <= 5
    puts "This party wasn't very good. Hardly anyone showed up to this party."
    puts "You call that a guest list? You didn't realize that the food would"
    puts "be gone so quickly, almost as quickly as those you tried to invite."
    puts "Maybe you shouldn't ever throw an undead party ever again..."
  elsif points >= 6 && points <= 10
    puts "You had a few friends show up. They had some food, but it still"
    puts "lacked some substance to the whole party. The zombies enjoyed the"
    puts "food, but there just was something missing from this. Maybe there's"
    puts "something that can be done to spice up the party..."
  elsif points >= 11 && points <= 15
    puts "This party was just like so many parties. Fun, enjoyable, and a good"
    puts "way to burn some time. An excuse to get together with some friends"
    puts "and have a little bit of fun. The guests shamble off, happy they came,"
    puts "but returning once again to their gloomy, undead lives..."
  elsif points >= 16 && points <= 20
    puts "Bill and Ted would be proud, whoever they were. You're party filled "
    puts "their timeless 'excellent' mantra. Good food, good company, and each"
    puts "guest left smiling. Being undead does have some downsides, but it's"
    puts "not too bad when you've made some new friends to help you get through"
    puts "the cloudy days..."
  elsif points >= 21 && points <= 24
    puts "Food, games, moans, what more could a zombie want? So many new faces,"
    puts "new stories, new friends. You're definitely going to be the block"
    puts "party planner now. With how much everyone's going to talk about this"
    puts "party, maybe more zombies will come. The more the moanier right?"
    puts "This is the party will be talked about for months on end. Maybe"
    puts "there's hope in the apocolypse after all..."
  else
    puts "This party is the party of all parties. The stuff of legends, the"
    puts "thing that people remember for the rest of their undead lives. Even"
    puts "the elusive Yeti Zombie showed up out of nowhere. Though uninvited,"
    puts "he was as welcomed as the other guests. There was music, and dance,"
    puts "games and food to the heart's content. This truly was a party never"
    puts "to be forgotten by the likes of any zombie who attended..."
  end
  # Pauses for 2 seconds so the user can read the text
  sleep 2
  puts "-----------------------------------------------------------------------"
  puts "Final score: #{points}"
  sleep 2
  puts "Thank you, #{name}, for playing Ruby-Zombie, a pocket adventure!"
end

# Returns how many points an item is worth. Takes in item name and returns the
# point value assigned to it.
public
def get_points(item)
  case item
  when "cake" then return 3
  when "soda" then return 1
  when "pizza_fondue" then return 5
  else return 2
  end
end

# Checks to see if two inputs match, if they do, it returns true. If not, then
# it returns false.
public
def check(player_input, friend_likes)
  if player_input == friend_likes then return true
  else return false
  end
end
