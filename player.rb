class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def set_lives=(correct)
    if correct == false
      @lives -=1
    end
  end

end