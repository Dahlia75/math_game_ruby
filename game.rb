#Game class will checking for the answers and scores
class Game

  def initialize()
    @players = [Player.new('Player1'), Player.new('Player2')]

    startGame
  end

  def startGame
    current_user_id = 0
    # while players are alive
    while @players[0].lives > 0 && @players[1].lives > 0
    #.  generate a question
      puts "\n----------- NEW TURN -----------"
      question = Questions.new
      #.  ask the user the question

      puts "Player #{current_user_id+1}: What dose #{question.num1} plus #{question.num2} equal?\n> "

      #.  wait for a response
      answer = $stdin.gets.chomp

      #.  when response is received then validate the answer
      if question.validate(answer.to_i)
        #.  if it is correct, then
        puts "Player #{current_user_id+1}: YES! You are correct."
        puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
      else
        #.  if it is not correct, then
        @players[current_user_id].reduce_lives
        puts "Player #{current_user_id+1}: Seriously? No!"
        puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
      end
      # puts current_user_id
      if @players[current_user_id].lives > 0
        current_user_id == 0 ? current_user_id = 1 : current_user_id = 0
      else
        current_user_id == 0 ? current_user_id = 1 : current_user_id = 0
        finishGame(current_user_id)
        break
      end
    end
  end

  def finishGame(id)
    puts "\n*** Player #{id+1} wins with a score of #{@players[id].lives}/3 ***"
    puts "\n----------- GAME OVER ----------- \n Good bye!"
  end
end

