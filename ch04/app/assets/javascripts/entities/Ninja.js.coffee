class @Ninja extends Entity
	constructor: (x, y, level, @player) ->
		super x, y, level
	speed: 3
	state: "CRUISING"
	subState: "IDLE"
	update: ->
		[xo, yo] = if @falling then [0, 0] else
			{x: px, y: py} = @player
			switch @state
				when "CRUISING" then @cruise px, py
				when "HUNTING" then @hunt px, py
		@move xo, yo
	render: (gfx) -> gfx.drawSprite 0, 1, @x, @y

	time: 0

	cruise: (px, py) ->
		x = y = 0
		# Do cruising logistic
		switch @subState
			when "RIGHT"
				x += @speed
				@dir = "RIGHT"
			when "LEFT"
				x -= @speed
				@dir = "LEFT"
		if --@time < 0
			newMove = utils.rand 5
			@time = utils.rand 20, 40
			@subState = switch newMove
				when 0, 1 then "LEFT"
				when 2, 3 then "RIGHT"
				else "IDLE"

		# Just touched a ladder
		if @onLadder and not @wasOnLadder
			@state = "HUNTING" if Math.random() < 0.5

		# spotted the professor so hunt at them
		@state = "HUNTING" if py == @y

		[x, y]
	hunt: (px, py) ->
		x = y = 0
		# Do hunting logic
		[x, y] 
