class Pirate
@@all = []
attr_accessor :name, :weight, :height

    def initialize(pirate)
        @name =    pirate[:name]
        @weight =  pirate[:weight]
        @height =  pirate[:height]
        @@all << self
    end


    def self.all
        @@all
    end



end