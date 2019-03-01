
class Tic_tac_toe
  
  def initialize
    @p1_array = [""]*9
    @p2_array = [""]*9
    @show_array = [""]*9
    @player1_index
    @player2_index
  end
 
 

  def get_p1
    show = @show_array.map {|val,index| if val.empty? return index}
    puts "Ingrese opcion #{show}  player1:"
    @player1_index = gets.chomp.to_i   
    return @player1_index
  end

  def get_p2
    puts "Ingrese opcion player2:"
    @player2_index = gets.chomp.to_i   
    return @player2_index
  end



  def set_player1       
    @p1_array[@player1_index] = "X" 
    @show_array[@player1_index] = "X"
  end

  def set_player2
    @p2_array[@player2_index] = "O"
    @show_array[@player2_index] = "O"   
  end
  
  def set_winner
    winner = false
    while winner == false do
      
      get_p1
      set_player1
      

      #Player 1 possibilities of win
      #Borders
      (!@p1_array[0].empty? && !@p1_array[1].empty? && !@p1_array[2].empty?) ? (winner = true;puts "Player 1 Won";break) : winner = false
      (!@p1_array[2].empty? && !@p1_array[5].empty? && !@p1_array[8].empty?) ? (winner = true;puts "Player 1 Won";break) : winner = false
      (!@p1_array[6].empty? && !@p1_array[7].empty? && !@p1_array[8].empty?) ? (winner = true;puts "Player 1 Won";break) : winner = false
      (!@p1_array[0].empty? && !@p1_array[3].empty? && !@p1_array[6].empty?) ? (winner = true;puts "Player 1 Won";break) : winner = false
      (!@p1_array[0].empty? && !@p1_array[1].empty? && !@p1_array[2].empty?) ? (winner = true;puts "Player 1 Won";break) : winner = false
      #Cross
      (!@p1_array[0].empty? && !@p1_array[4].empty? && !@p1_array[8].empty?) ? (winner = true;puts "Player 1 Won";break) : winner = false
      (!@p1_array[2].empty? && !@p1_array[4].empty? && !@p1_array[6].empty?) ? (winner = true;puts "Player 1 Won";break) : winner = false
      #Inside
      (!@p1_array[1].empty? && !@p1_array[4].empty? && !@p1_array[7].empty?) ? (winner = true;puts "Player 1 Won";break) : winner = false
      (!@p1_array[3].empty? && !@p1_array[4].empty? && !@p1_array[5].empty?) ? (winner = true;puts "Player 1 Won";break) : winner = false


      if winner === false
        get_p2
        set_player2 
      end
      #Player 2 possibilities of win
      (!@p2_array[2].empty? && !@p2_array[5].empty? && !@p2_array[8].empty?) ? (winner = true;puts "Player 2 Won";break) : winner = false
      (!@p2_array[6].empty? && !@p2_array[7].empty? && !@p2_array[8].empty?) ? (winner = true;puts "Player 2 Won";break) : winner = false
      (!@p2_array[0].empty? && !@p2_array[3].empty? && !@p2_array[6].empty?) ? (winner = true;puts "Player 2 Won";break) : winner = false
      (!@p2_array[0].empty? && !@p2_array[2].empty? && !@p2_array[2].empty?) ? (winner = true;puts "Player 2 Won";break) : winner = false
      (!@p2_array[0].empty? && !@p2_array[2].empty? && !@p2_array[2].empty?) ? (winner = true;puts "Player 2 Won";break) : winner = false
      #Cross
      (!@p2_array[0].empty? && !@p2_array[4].empty? && !@p2_array[8].empty?) ? (winner = true;puts "Player 2 Won";break) : winner = false
      (!@p2_array[2].empty? && !@p2_array[4].empty? && !@p2_array[6].empty?) ? (winner = true;puts "Player 2 Won";break) : winner = false
      #Inside
      (!@p2_array[2].empty? && !@p2_array[4].empty? && !@p2_array[7].empty?) ? (winner = true;puts "Player 2 Won";break) : winner = false
      (!@p2_array[3].empty? && !@p2_array[4].empty? && !@p2_array[5].empty?) ? (winner = true;puts "Player 2 Won";break) : winner = false
    
    
    end
  end


  def show
    puts @p1_array
  end
 
end

juego = Tic_tac_toe.new()

juego.set_winner
