class Bottles
  def verse number
    subject = number == 1 ? 'it' : 'one'
    "#{bottles_of_beer number} on the wall, #{bottles_of_beer number}.\n" +
    "Take #{subject} down and pass it around, " +  
    "#{bottles_of_beer number - 1} on the wall.\n"
  end

  private
  
  def bottles_of_beer number
    return "#{number} bottle of beer" if number == 1
    return 'no more bottles of beer' if number == 0

   "#{number} bottles of beer"
  end
end