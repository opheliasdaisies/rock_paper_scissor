class Player
  attr_reader :moves
  attr_accessor :move, :score

  def initialize
    @moves = ["rock","paper","scissor"]
    @score = 0
    @move
  end

  def rand_move
    self.move = @moves[rand(0..2)]
  end

end