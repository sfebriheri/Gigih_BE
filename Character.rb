class Character
    attr_accessor :name, :hp, :attack_dmg
  
    def initialize(name, hit_point, attack_dmg)
      @name = name
      @hp = hit_point
      @attack_dmg = attack_dmg
    end
  
    def receive_damage(damage)
      @hp -= damage
    end
  
    def attack(other_player)
      puts "#{@name} attacks #{other_player.name} with #{@attack_dmg} damage"
      other_player.receive_damage(@attack_dmg)
      puts "#{other_player.name} dies." if other_player.die?
    end
  
    def to_s
      puts "#{@name} has #{@hp} hit points and #{@attack_dmg} attack damage"
    end
  
    def die?
      @hp <= 0
    end
  end