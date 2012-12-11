@game =
	init: ->
		if not gfx.init()
			alert "Sorry, no canvas"
			return
		gfx.load ->
			game.reset()


	running: false
	stop: -> @running = false
	start: -> @running = true
	reset: ->
		keys.reset()
		@player = new Player()
		@level = new Level levels[0], @
		if not @running
			@start()
			@tick()

	tick: ->
		return if not @running
		gfx.clear()
		@update()
		@render()
		setTimeout (-> game.tick()), 33
	setPlayer: (x, y, level) ->
		@player.level = level
		@player.x =	x
		@player.y = y
	update: ->
		@level.update()
		@player.update()
	render: ->
		@level.render gfx
		@player.render gfx

game.init()
