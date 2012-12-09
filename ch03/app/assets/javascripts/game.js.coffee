game =
	init: ->
		if not gfx.init()
			alert "Could not set up game canvas"
			return
		gfx.load ->

			level1 = """
				.............
				...........*.
				....@#@@@@#@.
				.....#....#..
				.....#....#..
				..*..#...@@@.
				..@@@@@...#..
				...#......#..
				...#......#..
				...#......#..
				.000000000000
			"""

			makeLevel = (ascii) ->
				# 1. Define the tile-to-symbol map
				tiles =
					"@": [4, 1]
					"0": [4, 0]
					"*": [5, 1]
					"#": [5, 0]
				# 2. Cut up the ASCII string into characters
				asciiMap = (row.split "" for row in ascii.split "\n")
				# 3. Map the characters to their tiles
				(for row in asciiMap
					for col in row
						tiles[col]
				)

			#Create a map from ascii
			level = makeLevel level1


			#Draw the level
			for row, y in level
				for tile, x in row
					continue if not tile
					xPos = x * gfx.tileW
					yPos = y * gfx.tileH
					gfx.drawSprite tile[0], tile[1], xPos, yPos


game.init()
