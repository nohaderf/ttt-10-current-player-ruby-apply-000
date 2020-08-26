def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}"
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}"
  puts "-----------"
  puts " #{board[6]} | #{board[8]} | #{board[8]}"
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index]= nil
    false
  else 
    true
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    true
  else
    false
  end
end

def input_to_index(user_input)
  index = userinput.to_i-1
end

def move(board, index, user = "X")
  board[index] = user
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if move(board, index, user = "X")
    display(board)
  else
    turn(board)
  end
end

def play(board)
  counter = 0
  while counter < 9
  turn(board)
  counter +=1
  end
end

def turn_count(board)
  counter = 0
  board.each do |spot|
    if spot == "X" || spot == "O"
      counter += 1
    end
  end
  counter
end

def current_player(board)
  turn_count(board) % 2 == 0? "X" : "O"
end

# started off with an if statement in #current_player, but it didn't work
# I came across the conditional expression when googling operators
# If the conditional expression is true, then it'll go for the first option 
# I switched the two options initially, "O" coming first, as the person playing "O" will be going second (an even number)
# Read the expected vs. got error message and realized I had flipped the results
# I realized we are keeping count of turns that already happened, and switched "X" to first. The test passed after.