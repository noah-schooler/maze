class Maze
  attr_accessor(:position, :display_north, :display_south, :display_east, :display_west)
  @@position = 1

  def initialize
    @display_north = "display: block"
    @display_west = "display: block"
    @display_east = "display: block"
    @display_south = "display: block"
  end

  def move_rooms(direction)
    if direction == "North"
      @@position -=4
    elsif direction == "South"
      @@position += 4
    elsif direction == "East"
      @@position += 1
    else
      @@position -= 1
    end

    if @@position == 5 || @@position == 9 || @@position == 10 || @@position == 11 || @@position == 12
      @display_north = "display: block"
      @display_west = "display: none"
      @display_east = "display: none"
      @display_south = "display: block"
    end
  end

  def current_room
    @room = "Room #{@@position}"
  end
end
