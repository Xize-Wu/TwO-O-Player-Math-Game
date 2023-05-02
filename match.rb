class Match
  def initialize(player1, player2, question)
    @player1 = player1
    @player2 = player2
    @question = question
  end

  def check(input)
    if input.to_i != @question.answer
      puts false
      return false
    else
      puts true
      return true
    end
  end
end
