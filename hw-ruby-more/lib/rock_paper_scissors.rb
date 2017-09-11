class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # Enum for different combinations of strategies and their
    # consequent outcomes.
    strategy = 
    {
      'R/P' => 'P', 'R/R' => 'R', 'R/S' => 'R',
      'P/R' => 'P', 'P/P' => 'P', 'P/S' => 'S',
      'S/R' => 'R', 'S/S' => 'S', 'S/P' => 'S',
    }
   
    # Error handling if invalid strategy is entered for player2.
    if !(player2[1] == 'R' || player2[1] == 'S' || player2[1] == 'P')
      raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
    
    # Error handling if invalid strategy is entered for player1.
    if !(player1[1] == 'R' || player1[1] == 'S' || player1[1] == 'P')
      raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
    
    # Determine the winner.
    if (strategy["#{player1[1]}/#{player2[1]}"] == player1[1] )
      return player1
    else
      return player2
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a? String
      # Return the winner for a round in the tournament.
      return winner(tournament[0], tournament[1])
    else  
      # Return the tournament winner.
      return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
    end
  end
end
