class Game

  attr_reader :name
  attr_accessor :lives, :score, :num1, :num2

  current_player = 1
  def activePlayer
      if current_player = 1
        current_player = 2
      else
        current_player = 1
      end
      
  end

  def question (name, lives)

    def initialize
      @num1 = rand(20)
      @num2 = rand(20)
      @answer = num1 + num2
    end

      puts "#{name} what does #{num1} plus #{num2} equal?"
      response = gets.chomp

      if response = answer
        puts "#{name} Correct!"
      else
        puts "#{name} Oh you are wrong!"
      end

    end

end

class Player < Game
    attr_reader :name
    attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def lifeloss
    @lives -= 1
    puts "You lost a life!"
  end

 end

NewGame = Game.new()

player1 = Player.new('Fred Flintstone')
puts player1.name

player2 = Player.new('Barney Rubble')
puts player2.name
