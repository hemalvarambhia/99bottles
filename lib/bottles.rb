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
      @number = number
    end

    def to_s
      [ line_one, line_two, line_three ].join "\n"
    end

    private

    def line_one
      "#{bottles_of_beer(@number).capitalize} on the wall, #{bottles_of_beer @number}."
    end

    def line_two
      if @number == 0
        return "Go to the store and buy some more, #{bottles_of_beer 99} on the wall."
      end

      subject = @number == 1 ? 'it' : 'one'
      "Take #{subject} down and pass it around, #{bottles_of_beer @number - 1} on the wall."
    end

    def line_three
      ''
    end

    def bottles_of_beer number
      return "#{number} bottle of beer" if number == 1
      return 'no more bottles of beer' if number == 0
      return '99 bottles of beer' if number < 0

      "#{number} bottles of beer"
    end
  end
end