game =
	init: ->
		if not gfx.init()
			alert "Could not set up game canvas"
			return
		gfx.load ->
			rand = (max) -> Math.floor Math.random()*max
			makeNinja = () ->
				x: rand gfx.w
				y: rand gfx.h

			drawNinja = (n) -> gfx.drawSprite 0, 1, n.x, n.y
			ninjas = (makeNinja() for [0..20])
			drawNinja n for n in ninjas

game.init()
