class Bottles
  def verse number
    "#{bottles_of_beer number} on the wall, #{bottles_of_beer number}.\n" +
    "Take one down and pass it around, " +  
    "#{bottles_of_beer number - 1} on the wall.\n"
  end

  private
  
  def bottles_of_beer number
    if number == 1
      "#{number} bottle of beer"
    else
      "#{number} bottles of beer"
    end
  end
end