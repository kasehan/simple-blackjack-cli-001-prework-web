def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = (deal_card + deal_card)
  puts "Your cards add up to #{total}"
  return total
end


def hit?(your_hand)
  prompt_user
  answer = get_user_input
  if answer == "s"
    return your_hand
  elsif answer == "h"
    your_hand + deal_card
  else
    invalid_command
  end
  # code hit? here
end

def invalid_command
  puts "Try again!"
  get_user_input
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
  end
end_game(total) 
  # code runner here
end

