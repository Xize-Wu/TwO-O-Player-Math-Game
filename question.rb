class Question
  def initialize()
    @a = rand(100)
    @b = rand(100)
    @question = 'What is #{@a} + #{@b}'
    @answer = @a + @b
  end
end
