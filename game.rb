require './player'
require './question'

class Game

 
  def initialize
    @turnNumber = 1
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @gameStatus = 1
  end

  def startGame
    until @gameStatus == 2
      askQuestion
    end
  end


  def switchPlayer
    @turnNumber += 1
  end

  def getCurrentPLayer
    if @turnNumber%2 == 0
      @player2
    else
      @player1
    end
  end


  def checkLives
    playerA = getCurrentPLayer
    if playerA.lives == 0
      switchPlayer
      playerB = getCurrentPLayer
      puts "#{playerB.name} Wins! With a score of #{playerB.lives}/3 lives left"
      puts "Game Over"
      exit(0)
      end
      

  end

  def askQuestion
    question = Question.new
    player = getCurrentPLayer
    puts "#{player.name} what does #{question.num1} plus #{question.num2} equal?"
    response = gets.chomp

    if question.checkAnswer(response.to_i)
        puts "#{player.name} Correct!"
        puts "#{player.lives} lives remaining"
        checkLives
      else
        player.lifeloss
        puts "#{player.name} Oh you are wrong!"
        puts "#{player.lives} lives remaining"
        checkLives
      end
        switchPlayer
  end

end

