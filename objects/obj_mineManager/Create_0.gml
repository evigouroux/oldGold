randomize();
global.mapSeed = random_range(-5000.0, 5000.0);

for (var i = 0; i < room_width/tileSize; i ++) {
	for (var j = 0; j < room_height/tileSize; j ++) {
		
		var gridX = i;
		var gridY = j;
		var elevation = generateElevationCoordinates(0.8*gridX, 0.8*gridY);
		var border = i == 0 || j == 0 || i == (room_width/tileSize)-1 || j == (room_height/tileSize)-1;
		
		if (elevation < 0.35 && !border) {
			instance_create_depth(i*tileSize, j*tileSize, 0, obj_tileGround);
		}
		else {
			instance_create_depth(i*tileSize, j*tileSize, 0, obj_tileWall);
		}		
	}
}

for (var i = 0; i < instance_number(obj_tile); i++) {
	var current = instance_find(obj_tile, i);
	setTileSprite(current, false);
}