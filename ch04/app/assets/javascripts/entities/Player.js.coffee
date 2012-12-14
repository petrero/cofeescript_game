class @Player extends Entity
	constructor: ->
		super
		@dir = "RIGHT"
	update: ->
		xo = yo = 0

		xo -= @speed if keys.left
		xo += @speed if keys.right
		yo -= @speed if keys.up
		yo += @speed if keys.down

		@move xo, yo
	render: (gfx) ->
		gfx.drawSprite 0, 0, @x, @y
		super
