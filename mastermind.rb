class Colors
  attr_reader :colors
  def initialize
    @colors = [:red, :blue, :yellow, :green, :orange, :purple, :white, :black] 
  end
end

class Player
	attr_reader :name
	def initialize(name)
		@name = name
	end
end

class Game
  attr_reader :round, :total_rounds
 
  def initialize(total_rounds=12, name="Bob")
  	@round = 0
  	@total_rounds = total_rounds.to_i
  	@player1 = Player.new(name)
    code_maker
    puts "You will play for #{@total_rounds} rounds."
  end

  def get_move
  	puts "Enter four colors:"
  	@move = gets.chomp
    @move.split(", ").collect { |color| color.to_sym }
  end

  def help
  	puts "The colors are: #{@colors}."
  	puts "Please enter four commas seperated by commas, like this:"
  	puts "blue, black, yellow, green"
  end

  def play
    while true
      @round += 1
  	  @new_move = get_move
  	  @pegs = get_pegs(@new_move)
  	  puts "You got #{@pegs[0]} in the right position and #{@pegs[1]} other colors correct."
  	  if win?(@pegs)
  	  	puts "You've won!"
  	  	return
  	  elsif lose? 
  	  	puts "You've lost, sucker!"
  	  	return
  	  end
    end
  end
 
  def get_pegs(player_move, red_pegs=0, white_pegs=0)
    player_move.each_index do |x|
      if @code[x] == player_move[x]
       red_pegs += 1
      elsif player_move.include?(@code[x])
       white_pegs += 1
      end
    end
    return [red_pegs, white_pegs]
  end

  def lose?
    true if @round == @total_rounds
  end

  def win?(pegs)
    true if pegs[0] == 4
  end

  private

  def code_maker
    @colors = Colors.new
    @code = @colors.colors.shuffle.first(4)
    return @code
  end

end

my_game = Game.new(2, "Carter")
my_game.play

