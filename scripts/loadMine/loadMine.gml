function loadMine(mine){	
	for (var i = 0; i < room_width/tileSize; i ++) {
		for (var j = 0; j < room_height/tileSize; j ++) {
			var tile = instance_create_depth(i*tileSize, j*tileSize, 0, mine[i][j]);
			var center = point_distance(i, j, (mapSize/tileSize/2), (mapSize/tileSize/2)) < 5;
			tile.gridX = i;
			tile.gridY = j;
			
			if (!center && mine[i][j] == obj_tileGround) {
				var dice = irandom_range(1, 100);
				if (dice < obj_mineManager.currentMine*2) {
					instance_create_depth(i*tileSize + tileSize/2, j*tileSize + tileSize/2, 0, obj_ghost);
				}
			}
			
			if (i == 0 || j == 0 || i == room_width/tileSize-1 || j == room_height/tileSize-1) {
				tile.indestructible = true;	
			}
		}
	}

	for (var i = 0; i < instance_number(obj_tile); i++) {
		var current = instance_find(obj_tile, i);
		setTileSprite(current, false);
	}
	if (!instance_exists(obj_camera)) {
		instance_create_depth(room_width/2 + tileSize/2, room_height/2 + tileSize/2, -2, obj_camera);
	}
	instance_create_depth(room_width/2 + tileSize/2, room_height/2 + tileSize/2, -5, obj_mineName);
	var player = instance_create_depth(room_width/2 + tileSize/2, room_height/2 + tileSize/2, -2, obj_player);
	player.image_index = 4;
}