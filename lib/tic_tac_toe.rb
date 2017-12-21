
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  input = user_input.to_i
  if input > 0 && input<=100
    return input -1
  end
  return -1
end

def move(board,position,player)
  if valid_move?(board,position)
    board[position]=player
  else
    puts "Invalid move"
    turn(board)
  end
end

def position_taken?(board,position)
  return board[position] == "X" || board[position] == "O"
end

def valid_move?(board,position)
  return !position_taken?(board,position) && position>=0 && position<board.length
end

def turn(board)
  display_board(board)
  puts "Enter number"
  input = gets.strip
  index = input_to_index(input)
  move(board,index,"X")
end
