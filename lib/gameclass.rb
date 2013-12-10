class GameEngine
  attr_accessor :player, :computer

  def initialize
    @player = Player.new
    @computer = Player.new
  end

  def win_or_lose
    case player.move
      when computer.move
        return draw
      when "rock"
        return win if computer.move == "scissor"
        return lose if computer.move == "paper"
      when "paper"
        return win if computer.move == "rock"
        return lose if computer.move == "scissor"
      when "scissor"
        return win if computer.move == "paper"
        return lose if computer.move == "rock"
      end
  end

  def win
    player.score += 1
    "Congratulations! You won!"
  end

  def lose
    computer.score += 1
    "Sorry, you lost. Better luck next time."
  end

  def draw
    "It's a tie!"
  end

end