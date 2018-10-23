class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end


  def check_winner(player1, player2)
    if @player1 == @player2
      return 'Its a draw'
    elsif
      @player1 == 'rock' && @player2 == 'scissors'
      return 'Player 1 wins'
    elsif @player1 == 'scissors' && @player2 == 'paper'
      return 'Player 1 wins'
    elsif @player1 == 'paper' && @player2 == 'rock'
      return 'Player 1 wins'
    else 'Player 2 wins'
    end
  end


end
