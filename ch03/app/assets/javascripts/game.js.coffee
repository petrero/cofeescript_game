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
			leftNinjas = (n for n in ninjas when n.x < gfx.w / 2)
			drawNinja n for n in leftNinjas

game.init()
