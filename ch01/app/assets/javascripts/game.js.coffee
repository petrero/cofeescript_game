game =
	init: ->
		if not gfx.init()
			alert("Could not set up game canvas!")
			return

		#Ready to play
		gfx.clear()

game.init()
c = gfx.ctx
c.fillStyle = "orange"
c.fillRect 10, 10, 300, 80
c.strokeStyle = "#3f3f3f"
c.strokeRect 10, 10, 300, 80
