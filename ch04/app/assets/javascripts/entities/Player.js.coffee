class @Player extends Entity
	constructor: ->
		super
		@dir = "RIGHT"
	update: ->
		xo = yo = 0

		if not @falling
			if keys.left
				xo -= @speed
				@dir = "LEFT"
			if keys.right
				xo += @speed
				@dir = "RIGHT"

		yo -= @speed if keys.up and @onLadder and not @onTopOfLadder
		yo += @speed if keys.down and @onLadder
		@dig() if keys.space
		@move xo, yo
	render: (gfx) ->
		gfx.drawSprite 0, 0, @x, @y
		super
	dig: ->
		return if utils.now() - @lastDig < (6 * 1000)

		@level.digAt @dir, @x, @y
		@lastDig = utils.now()
