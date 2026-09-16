function loadMine(mine){
	for (var i = 0; i < room_width/tileSize; i ++) {
		for (var j = 0; j < room_height/tileSize; j ++) {
			var tile = instance_create_depth(i*tileSize, j*tileSize, 0, mine[i][j]);
			tile.gridX = i;
			tile.gridY = j;
		}
	}

	for (var i = 0; i < instance_number(obj_tile); i++) {
		var current = instance_find(obj_tile, i);
		setTileSprite(current, false);
	}

	var camera = instance_create_depth(room_width/2 + tileSize/2, room_height/2 + tileSize/2, -2, obj_camera);
	var player = instance_create_depth(room_width/2 + tileSize/2, room_height/2 + tileSize/2, -2, obj_player);
	player.image_index = 4;
}