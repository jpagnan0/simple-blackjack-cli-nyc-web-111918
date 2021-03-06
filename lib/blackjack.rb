def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card+deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  if get_user_input == 'h'
    card_total += deal_card
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "invalid"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome #introduce the game
  sleep(0.75)
  card_total = initial_round 
  until card_total > 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) 
end
    
