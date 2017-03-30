class Player
  attr_reader :name, :hp
  STARTING_HP = 1

  def initialize(name)
    @name = name
    @hp = STARTING_HP
    @won = false
  end
  
  def increase_hp
    self.hp += 10
  end 

  def won?
    self.won = true if self.hp >= 100
  end

  private

  attr_writer :hp, :won

end
