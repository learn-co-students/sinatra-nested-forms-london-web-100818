class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(ship_details)
    @name = ship_details[:name]
    @type = ship_details[:type]
    @booty = ship_details[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end