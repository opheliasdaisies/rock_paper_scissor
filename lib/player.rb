class Player
  attr_reader :moves
  attr_accessor :move, :score

  def initialize
    @moves = ["rock","paper","scissor"]
    @score = 0
    @move
  end

  def rand_move
    @moves[rand(1..3)]
  end

end