module SnackRoulette

  class Wheel
    SHELVES = 4
    PRODUCTS = 20
    LOW_SPIN = 50
    HIGH_SPIN = 250

    def initialize
      @rnd = Random.new
    end

    def spin!
      puts header
      result(randomize)
    end

    def spinner
      spinner = SnackRoulette::Spinner.new
      count = @rnd.rand(LOW_SPIN..HIGH_SPIN)
      (0..count).each do |i|
        print spinner.next
        sleep 0.01
      end
      print "\b"
    end

    def header
      <<EOF
      Amazing Snack Roulette!
      =======================

      Spinning the Amazing Snack Roulette wheel of awesome fortune!

EOF
    end

    def result(values)
      values.each do |key, value|
        spinner
        puts "      #{key.capitalize}: #{value}"
      end
    end

    def randomize
      {
        shelf: @rnd.rand(1..SHELVES),
        product: @rnd.rand(1..PRODUCTS)
      }
    end

  end

end
