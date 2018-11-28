require('sinatra')
require('sinatra/reloader')
require('./lib/maze.rb')
require('pry')


get ('/') do
  maze = Maze.new()
  @room = maze.current_room
  @display_north = maze.display_north
  @display_west = maze.display_west
  @display_east = maze.display_east
  @display_south = maze.display_south
  erb(:room1)
end

post('/room') do
  maze = Maze.new()
  @room = maze.current_room
  @direction = params['direction']
  maze.move_rooms(@direction)
  @display_north = maze.display_north
  @display_west = maze.display_west
  @display_east = maze.display_east
  @display_south = maze.display_south
  erb(:room1)
end
#
# post ('/room') do
#   erb(:room1)
# end
#
# get('/room1') do
#   erb(:room1)
# end
#
# post ('/room5') do
#   @display = "display:none"
#   erb(:room1)
# end
#
# get('/room2') do
#   erb(:room2)
# end
#
# get('/room3') do
#   erb(:room3)
# end
#
# get('/room4') do
#   erb(:room4)
# end
#
# get('/room5') do
#   erb(:room5)
# end
#
# get('/room6') do
#   erb(:room6)
# end
#
# get('/room7') do
#   erb(:room7)
# end
#
# get('/room8') do
#   erb(:room8)
# end
#
# get('/room9') do
#   erb(:room9)
# end
#
# get('/room10') do
#   erb(:room10)
# end
#
# get('/room11') do
#   erb(:room11)
# end
#
# get('/room12') do
#   erb(:room12)
# end
#
# get('/room13') do
#   erb(:room13)
# end
#
# get('/room14') do
#   erb(:room14)
# end
#
# get('/room15') do
#   erb(:room15)
# end
#
# get('/room16') do
#   erb(:room16)
# end
