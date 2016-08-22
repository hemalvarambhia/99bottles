class Bottles
  def verse number
    container = number - 1 == 1 ? 'bottle' : 'bottles'
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
    "Take one down and pass it around, " +  
    "#{number - 1} #{container} of beer on the wall.\n"
  end
end