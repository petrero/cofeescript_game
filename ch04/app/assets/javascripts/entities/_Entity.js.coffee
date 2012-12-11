class @Entity
	constructor: (@x, @y, @level) ->
	speed: 4
	dir: "LEFT"
	update: ->
	render: (gfx) -> gfx.ctx.fillText "?", @x, @y
