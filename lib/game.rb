class Game
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
end
