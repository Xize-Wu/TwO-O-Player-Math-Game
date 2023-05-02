require_relative 'match'
require_relative 'player'
require_relative 'question'

def check(p1, p2)
  if p1.lives == 0
    puts "#{p2.name} wins with a score of #{p2.lives}/3."
  end
  if p2.lives == 0
    puts "#{p1.name} wins with a score of #{p1.lives}/3."
  end
end

p1 = Player.new('Player 1')
p2 = Player.new('Player 2')


puts "----- NEW TURN -----"
i = 0
while p1.lives > 0 && p2.lives > 0
  q = Question.new()
  m = Match.new(p1, p2, q)
    if i % 2 == 0 
      puts "#{p1.name}: #{q.question}"
      input = gets
      puts "#{p1.name}: #{input}"
      p1.set_lives(m.check(input))
    end
    if i % 2 == 1
      puts "#{p2.name}: #{q.question}"
      input = gets
      puts "#{p2.name}: #{input}"
      p2.set_lives(m.check(input))
    end
    puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"
    i += 1
  end

  if p1.lives == 0
    puts "#{p2.name} wins with a score of #{p2.lives}/3"
  end
  if p2.lives == 0
    puts "#{p1.name} wins with a score of #{p1.lives}/3"
  end

  puts "GAME OVER"
  puts "Good bye!"