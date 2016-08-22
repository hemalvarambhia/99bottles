class Bottles
  def verse number
    [ 
      "#{bottles_of_beer(number).capitalize} on the wall, #{bottles_of_beer number}.\n",
      line_two(number),
      line_three(number)
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
    subject = number == 1 ? 'it' : 'one'
    line_two = 
      if number == 0
        'Go to the store and buy some more, 99 bottles of beer on the wall.'
      else
        "Take #{subject} down and pass it around, "
      end
  end

  def line_three number
    if number >= 1
      "#{bottles_of_beer number - 1} on the wall.\n"
    else
      "\n"
    end
  end
end