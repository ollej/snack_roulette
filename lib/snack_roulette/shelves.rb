module SnackRoulette
  class Shelves
    def initialize
      @rnd = Random.new
    end

    def randomize
      {
        type: self.class::DESCRIPTION,
        shelf: @rnd.rand(1..self.class::SHELVES),
        product: @rnd.rand(1..self.class::PRODUCTS),
      }
    end
  end

  class Mellis < Shelves
    SHELVES = 4
    PRODUCTS = 20
    DESCRIPTION = 'Mellishyllan'
  end

  class Greek < Shelves
    SHELVES = 3
    PRODUCTS = 4
    DESCRIPTION = 'Greek yoghurt and müsli'
  end

  class Bars < Shelves
    SHELVES = 10
    PRODUCTS = 7
    DESCRIPTION = 'Protein bars and nuts'
  end
end
