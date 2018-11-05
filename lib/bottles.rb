class Bottles
  def verse(num)
    bottles = "#{num} bottles"
    do_something = "Take one down and pass it around"
    bottles_remaining = "#{num - 1} bottles"

    if num == 2
      bottles_remaining = "1 bottle"
    end

    if num == 1
      bottles = "1 bottle"
      do_something = "Take it down and pass it around"
      bottles_remaining = "no more bottles"
    end

    if num == 0
      bottles = "no more bottles"
      do_something = "Go to the store and buy some more"
      bottles_remaining = "99 bottles"
    end

    sing = <<~VERSE
    #{bottles.capitalize} of beer on the wall, #{bottles} of beer.
    #{do_something}, #{bottles_remaining} of beer on the wall.
    VERSE
  
    sing
  end

  def verses(max, min)
    # yes I straight up copied this method, sorry. I couldn't figure out what chain of
    # methods I needed to not end up with a rogue nil or argument array stuck on
    # the end =\
    max.downto(min).map {|num| self.verse(num) }.join("\n")
  end

  def song
    self.verses(99, 0)
  end
end

