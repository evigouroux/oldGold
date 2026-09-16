function generateMine(){
	
	mine = [];
	holePlaced = false;
	
	for (var i = 0; i < room_width/tileSize; i ++) {
		mine[i] = [];
		for (var j = 0; j < room_height/tileSize; j ++) {
			
			var gridX = i;
			var gridY = j;
			var elevation = generateElevationCoordinates(0.8*gridX, 0.8*gridY);
			var border = i == 0 || j == 0 || i == (room_width/tileSize)-1 || j == (room_height/tileSize)-1;
			var center = point_distance(gridX, gridY, (room_width/tileSize/2), (room_height/tileSize/2)) < 3;
		
			if (center || (elevation < 0.4 && !border)) {
				
				//if (!center && !holePlaced && point_distance(gridX, gridY, (room_width/tileSize/2), (room_height/tileSize/2)) > 8) {
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