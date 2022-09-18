class Coin
    attr_accessor :denomination, :up

    # enums
    module Denomination
        NICKEL = 0.05
        DIME = 0.10
        QUARTER = 0.25
        LOONIE = 1
        TOONIE = 2
    end
    module CoinSide
        H = 1
        T = 2
    end

    def initialize(denomination)
        if denomination != Denomination::NICKEL && denomination != Denomination::DIME && denomination != Denomination::QUARTER && denomination != Denomination::LOONIE && denomination != Denomination::TOONIE
            @denomination = nil 
        else
            @denomination = denomination
        end
    end

    def denomination() # returns the denomination of the coin (does not set it)
        return @denomination
    end

    def flip() # flips the coin, returns self, is a synonym for randomize()
        side = rand(CoinSide::H..CoinSide::T)
        if side == CoinSide::H
            @up = :H
        else
            @up = :T
        
        end
        return self
    end

    def sideup() # returns :H or :T (the result of the last flip) or nil (if no flips yet done), is a synonym for result()
        return @up
    end
end

coin = Coin.new 0.25 # Create class and save it in variable
puts coin.denomination
coin.flip 
puts coin.sideup # should be nil if flip() has not been called before

