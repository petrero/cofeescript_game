class @Entity
	constructor: (@x, @y) ->
	speed: 4
	dir: "LEFT"
	update: ->
	render: (gfx) -> gfx.ctx.fillText "?", @x, @y
