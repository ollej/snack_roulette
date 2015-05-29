module SnackRoulette

  class Spinner < Enumerator
    CHARS = %w{ | / - \\ }

    def initialize
      @count = 0
    end

    def countup
      @count += 1
    end

    def next
      "\b#{CHARS[countup % 4]}"
    end
  end

end
