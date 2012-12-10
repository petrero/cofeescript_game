@game =
	init: ->
		if not gfx.init()
			alert "Sorry, no canvas"
			return
		gfx.load -> game.reset()

	running: false
	stop: -> @running = false
	start: -> @running = true
	reset: ->
		keys.reset()
		if not @running
			@start()
			@tick()
	tick: ->
		return if not @running
		gfx.clear()
		@update()
		@render()
		setTimeout (-> game.tick()), 33
	update: ->
	render: ->
		player = new Player 50, 50
		ninja1 = new Ninja 80, 50
		player.render gfx
		ninja1.render gfx

game.init()
