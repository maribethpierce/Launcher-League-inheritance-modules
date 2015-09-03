class SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    "Super Powers include:"
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

module Speedable
  def backstory
    "ADHD"
  end

  def weakness
    "Maple syrup"
  end

  def speed_in_mph
    super * 1000
  end
end

module Brawlable
  def backstory
    "Was picked on as a kid. Revenge is a dish best served cold..."
  end

  def weakness
    "Living room blanket forts"
  end

  def health
    super * 20
  end
end

module Detectable
  def powers
    super + "Can blend in with surroundings. Wicked observant."
  end

  def backstory
    "Was born in a cave. Was a teenager before she ever saw the sun."
  end

  def weakness
    "Luke Bayne"
  end

  def speed_in_mph
    10
  end
end

module Demigodable
  def backstory
    "Greek. duh... Just don't ask him to borrow any money."
  end

  def weakness
    "Wooden horses"
  end

  def home
    "Cosmic Plane"
  end
end

module Jackable
  def backstory
    "Mother was a school maintainance professional, father was an asteroid"
  end

  def weakness
    "Korean honey butter potato chips (Ask Casey)"
  end

  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end
end

module Wetable
  def backstory
    "Mother was a dolphin."
  end

  def weakness
    "Limited excursions on land - gravity's a bitch."
  end

  def home
    super + "\'s Oceans"
  end

  def fans_per_thousand
    super/100
  end

  def psychic?
    true
  end
end

class Speedster < SuperHero
  include Speedable
end

class Brawler < SuperHero
  include Brawlable
end

class Detective < SuperHero
  include Detectable
end

class Demigod < SuperHero
  include Demigodable
end

class JackOfAllTrades < SuperHero
  include Jackable
end

class WaterBased < SuperHero
  include Wetable
end
