game =
	init: ->
		if not gfx.init()
			alert "Could not set up game canvas"
			return
		gfx.load ->
			rand = (max) -> Math.floor Math.random()*max
			for y in [0..19]
				for x in [0..23]
					col = rand 7
					row = rand 2
					gfx.drawSprite col, row, x*24, y*24


game.init()
