class Bottles
  def song
    verses 99, 0
  end

  def verses start, finish
    from = [start, finish].min
    to = [start, finish].max

    (from..to).map { |number| verse number }.reverse.join "\n"
  end

  def verse number
    Verse.new(number).to_s
  end

  private

  class Verse
    def initialize number
      @number_of_bottles = number
    end

    def to_s
      [ line_one, line_two, line_three ].join "\n"
    end

    private

    def line_one
      "#{bottles_of_beer(@number_of_bottles).capitalize} on the wall, " +
        "#{bottles_of_beer @number_of_bottles}."
    end

    def line_two
      if @number_of_bottles == 0
        return "Go to the store and buy some more, " + 
          "#{bottles_of_beer 99} on the wall."
      end

      subject = @number_of_bottles == 1 ? 'it' : 'one'
      "Take #{subject} down and pass it around, " +
        "#{bottles_of_beer @number_of_bottles - 1} on the wall."
    end

    def line_three
      ''
    end

    def bottles_of_beer number
      bottles = "#{number} bottles" if number > 1
      bottles =  "1 bottle" if number == 1
      bottles =  'no more bottles' if number == 0

      "#{bottles} of beer"
    end
  end
end
