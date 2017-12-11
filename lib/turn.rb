def display_board(board)
  puts board
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  end
end

=begin
def input_to_index(input)
   input = input.to_i - 1
end
=end

def position_taken?(board, index)
  if (board[index] == "" || board[index] == " " || board[index] == nil)
      false
    elsif (board[index] == "X" || board[index] == "O")
      true
    end
end

def move(board, index, player = "X")
  board[index] = player
end
