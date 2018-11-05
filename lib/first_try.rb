class Bottles
  def plurality(num)
    if num > 1
      "#{num} bottles"
    elsif num == 1
      "1 bottle"
    elsif num < 1
      "no more bottles"
    end
  end

  def what_to_do(num)
    if num > 1
      "Take one down and pass it around"
    elsif num == 1
      "Take it down and pass it around"
    elsif num < 1
      "Go to the store and buy some more"
    end
  end
  
  def verse(num)
    current_num = self.plurality(num) 
    first = current_num.capitalize
    new_num = self.plurality(num - 1)
    what_do = self.what_to_do(num)
    if what_do == "Go to the store and buy some more,"
      new_num = "99 bottles"
    end

    answer = <<-VERSE
#{first} of beer on the wall, #{current_num} of beer.
#{what_do}, #{new_num} of beer on the wall.
VERSE
  
  answer
  end
end

