class Game
  attr_reader :players
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end
  
  def healer
    @players.first
  end

  def receiver
    @players.last
  end
  
  def switch_players
    @players.reverse!
  end

  def validate(player)
    player.increase_hp
  end
  
  def winner
    healer.won ? healer : receiver
  end

  private

  def finished?
    healer.won || receiver.won
  end
end
