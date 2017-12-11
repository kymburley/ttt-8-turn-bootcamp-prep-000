def display_board(board)
  cell_divider = "|"
  row_divider = "-----------"

  row1 = " #{board[0]} #{cell_divider} #{board[1]} #{cell_divider} #{board[2]} "
  row2 = " #{board[3]} #{cell_divider} #{board[4]} #{cell_divider} #{board[5]} "
  row3 = " #{board[6]} #{cell_divider} #{board[7]} #{cell_divider} #{board[8]} "

  puts row1
  puts row_divider
  puts row2
  puts row_divider
  puts row3
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
