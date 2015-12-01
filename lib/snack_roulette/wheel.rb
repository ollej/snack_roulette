module SnackRoulette

  class Wheel
    LOW_SPIN = 50
    HIGH_SPIN = 250

    def initialize
      @rnd = Random.new
    end

    def spin!
      puts header
      show_result(shelf.randomize)
    end

    def shelf
      @shelf ||= case @rnd.rand(1..5)
      when 1
        SnackRoulette::Greek.new
      when 2
        SnackRoulette::Bars.new
      else
        SnackRoulette::Mellis.new
      end
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

    def show_result(values)
      values.each do |key, value|
        spinner
        puts "      #{key.capitalize}: #{value}"
      end
    end

  end

end
