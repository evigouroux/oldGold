function generateMine(mineDepth){
	
	global.mapSeed = random_range(-5000.0, 5000.0);
	mine = [];
	var baseElevation = 0.01 * mineDepth;
	
	for (var i = 0; i < mapSize/tileSize; i ++) {
		mine[i] = [];
		for (var j = 0; j < mapSize/tileSize; j ++) {
			
			var gridX = i;
			var gridY = j;
			var elevation = generateElevationCoordinates(0.8*gridX, 0.8*gridY) + baseElevation ;
			var border = i == 0 || j == 0 || i == (mapSize/tileSize)-1 || j == (mapSize/tileSize)-1;
			var center = point_distance(gridX, gridY, (mapSize/tileSize/2), (mapSize/tileSize/2)) < 3;
			var outerCenter = point_distance(gridX, gridY, (mapSize/tileSize/2), (mapSize/tileSize/2)) > 3 && point_distance(gridX, gridY, (mapSize/tileSize/2), (mapSize/tileSize/2)) < 7;
			var dice = irandom_range(1, 100);
		
			if (center || (elevation < 0.4 && !border)) {
				mine[i][j] = obj_tileGround;
			}
			else if (!center && !border && elevation >= 0.4 && elevation < 0.5 && dice < 20) {
				mine[i][j] = obj_tileWallGold;
			}
			else {
				mine[i][j] = obj_tileWall;
			}		
		}
	}
	
	if (mineDepth < 7) {
		var xShift = choose(-1, 1) * irandom_range(5, 8);
		var yShift = choose(-1, 1) * irandom_range(5, 8);
		mine[round(mapSize/tileSize/2) + xShift][round(mapSize/tileSize/2) + yShift] = obj_tileHole;	
	
		xShift = choose(-1, 1) * irandom_range(8, 12);
		yShift = choose(-1, 1) * irandom_range(8, 12);
		mine[round(mapSize/tileSize/2) + xShift][round(mapSize/tileSize/2) + yShift] = obj_tileHole;
	
		xShift = choose(-1, 1) * irandom_range(8, 12);
		yShift = choose(-1, 1) * irandom_range(8, 12);
		mine[round(mapSize/tileSize/2) + xShift][round(mapSize/tileSize/2) + yShift] = obj_tileHole;
	}
	
	return mine;
}