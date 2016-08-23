class Bottles
  def verses start, finish
    verse(start) + "\n" + verse(finish)
  end

  def verse number
    [ 
      "#{bottles_of_beer(number).capitalize} on the wall, #{bottles_of_beer number}.\n",
      line_two(number)
    ].join
  end

  private
  
  def bottles_of_beer number
    return "#{number} bottle of beer" if number == 1
    return 'no more bottles of beer' if number == 0
    return '99 bottles of beer' if number < 0

   "#{number} bottles of beer"
  end

  def line_two number
    if number == 0
      return "Go to the store and buy some more, #{bottles_of_beer 99} on the wall.\n"
    end

    subject = number == 1 ? 'it' : 'one'
    "Take #{subject} down and pass it around, #{bottles_of_beer number - 1} on the wall.\n"
  end
end