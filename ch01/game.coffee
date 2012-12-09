game =
  init: ->
    if not gfx.init()
      alert "Could not set up game canvas!"
      return #abort the game
    #Ready to play
    gfx.clear()

#Start the game running
game.init()

# Title screen
c = gfx.ctx

# Orange rectangle with a dark-gray border
c.fillStyle = "orange"
c.fillRect 10, 10, 300, 80
c.strokeStyle = "#3f3f3f"
c.strokeRect 10, 10, 300, 80
