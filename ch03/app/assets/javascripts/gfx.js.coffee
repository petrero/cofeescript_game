gfx =
	tileW: 24
	tileH: 24
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
			col*24, row*24, 24, 24,
			x, y, 24, 24
	drawSpriteFancy: (col, row, x, y, w, h, scale) ->
		w *= @tileW
		h *= @tileH
		@ctx.drawImage @sprites,
			col * w, row * h, w, h,
			x, y, w *scale, h * scale

@gfx = gfx
