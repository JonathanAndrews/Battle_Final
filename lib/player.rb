class Player

  DEFAULT_HIT_POINTS = 50

attr_reader :name, :hp

def initialize(name, hp = DEFAULT_HIT_POINTS)
@name = name
@hp = hp
end

def receive_damage
  @hp -= 10
end

def attack(player2)
  player2.receive_damage
end


end
