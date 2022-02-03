
#require_relative 'board'

class Show
  #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)

    def show_board(board)

      puts "  "
      puts " A #{board.board_hash[0]} | #{board.board_hash[1]} | #{board.board_hash[2]}"
      puts "   ---------"
      puts " B #{board.board_hash[3]} | #{board.board_hash[4]} | #{board.board_hash[5]}"
      puts "   ---------"
      puts " C #{board.board_hash[6]} | #{board.board_hash[7]} | #{board.board_hash[8]}"

    end

end


  