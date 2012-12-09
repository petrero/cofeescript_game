gfx =
	init: ->
		canvas = document.querySelector "#game"
		@ctx = canvas?.getContext? "2d"
		return false if not @ctx
		@w = canvas.width
		@h = canvas.height
		true
	clear: ->
		@ctx.clearRect 0, 0, @w, @h
	load: (onload) ->
		@sprites = new Image()
		@sprites.src = "assets/sprites.png"
		@sprites.onload = -> onload()
	drawSprite: (col, row, x, y) ->
		@ctx.drawImage @sprites,
			col * 24, row * 24, 24, 24,
			x, y, 24, 24

game =
	init: ->
		if not gfx.init()
			alert("Could not set up game canvas!")
			return

		#Ready to play
		gfx.clear()
		gfx.load ->
			rand = (max) -> Math.floor Math.random() * max
			for y in [0..19]
				for x in [0..23]
					col = rand 7
					row = rand 2
					gfx.drawSprite col, row, x * 24, y * 24
game.init()
