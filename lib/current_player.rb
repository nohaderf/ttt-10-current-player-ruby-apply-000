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
  if !turn_count(board) % 2 == 0
    puts "X's turn"
  else
    puts "O's turn"
    
  end
end