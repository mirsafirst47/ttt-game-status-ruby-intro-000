# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # bottom row
  [0,3,6], # Left vertical row
  [1,4,7], # middle vertical row
  [2,5,8], # Right vertical row
  [0,4,8], # first diagonal row
  [2,4,6] # second diagonal row
]

def won?(board)

end

def full?(board)
  board.all? do |index|# all index of the board are full
    index == "X" || index == "O"
end

def draw?(board)
  if !won?(board) && full?(board)# Means if the board has not been won, but the board is full. this is a draw
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw(board)# the game is over if won?, or full?, or draw? .
    return true
  else
    return false
  end
end

def winner(board)
end
