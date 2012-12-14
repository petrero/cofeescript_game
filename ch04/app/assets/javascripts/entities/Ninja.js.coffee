class @Ninja extends Entity
	constructor: (level, x, y, @player) ->
		super x, y, level
	speed: 3
	state: "CRUISING"
	subState: "IDLE"
	update: ->
		xo = yo = 0

		@move xo, yo
	render: (gfx) -> gfx.drawSprite 0, 1, @x, @y
