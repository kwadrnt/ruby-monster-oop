### monster.rb - run this file

# Monster class
class Monster
  attr_accessor :habitat, :threat_level
  @@count = 0

  def initialize(habitat, threat_level = :medium)
    @habitat = habitat
    if threat_level == :low || threat_level == :medium || threat_level == :high || threat_level == :midnight
      @threat_level = threat_level
    else
      raise "ouch! input for threat_level not valid"
    end

    @@count = @@count + 1

    p 'RAWR'
    p "#{@@count} monsters now roam the world!"
  end

  def habitat? (habitat)
    @habitat == habitat
  end

  def self.count
    @@count
  end


end


# Zombie class



# Werewolf class



# Flying module



# Vampire class




### "Driver" Code Area
ghost = Monster.new('house', :high)
frankenstein = Monster.new('Transylvania', :low)
kraken = Monster.new('ocean')
dog = Monster.new('streets', :friendly)
p ghost
p frankenstein
p kraken
p dog
puts ghost.habitat?('house')
puts frankenstein.habitat?('hotel')
puts kraken.habitat?('ocean')
puts Monster.count
