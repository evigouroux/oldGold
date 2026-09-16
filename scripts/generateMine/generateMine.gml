function generateMine(){
	
	global.mapSeed = random_range(-5000.0, 5000.0);
	mine = [];
	holePlaced = false;
	
	for (var i = 0; i < mapSize/tileSize; i ++) {
		mine[i] = [];
		for (var j = 0; j < mapSize/tileSize; j ++) {
			
			var gridX = i;
			var gridY = j;
			var elevation = generateElevationCoordinates(0.8*gridX, 0.8*gridY);
			var border = i == 0 || j == 0 || i == (mapSize/tileSize)-1 || j == (mapSize/tileSize)-1;
			var center = point_distance(gridX, gridY, (mapSize/tileSize/2), (mapSize/tileSize/2)) < 3;
		
			if (center || (elevation < 0.4 && !border)) {
				
				//if (!center && !holePlaced && point_distance(gridX, gridY, (mapSize/tileSize/2), (mapSize/tileSize/2)) > 8) {
				//	mine[i][j] = obj_tileHole;
				//	holePlaced = true;
				//}
				if (center && !holePlaced) {
					mine[i][j] = obj_tileHole;
					holePlaced = true;
				}
				else {
					mine[i][j] = obj_tileGround;
				}
			}
			else {
				mine[i][j] = obj_tileWall;
			}		
		}
	}
	
	return mine;
}