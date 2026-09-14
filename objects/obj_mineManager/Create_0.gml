for (var i = 0; i < room_width/tileSize; i ++) {
	for (var j = 0; j < room_height/tileSize; j ++) {
		instance_create_depth(i*tileSize, j*tileSize, 0, obj_tileWall);
	}
}

for (var i = 0; i < instance_number(obj_tile); i++) {
	var current = instance_find(obj_tile, i);
	setTileSprite(current, false);
}