function destroyTile(target, sourceX, sourceY, interior){

	with(target) {
		
		if (indestructible) {
			return -1;	
		}
		
		obj_mineManager.cash ++;
		
		var tile = instance_create_depth(x, y, depth, obj_tileGround);
		tile.gridX = gridX;
		tile.gridY = gridY;
		tile.image_index = image_index;
		instance_destroy();
		setTileSprite(tile, true);
		obj_mineManager.mines[obj_mineManager.currentMine][gridX][gridY] = obj_tileGround;
	
		for (var i = 0; i < 5; i++) {
			var rubble = instance_create_depth(x + tileSize/2 + irandom_range(-8, 8), y + tileSize/2 + irandom_range(-8, 8), -4, obj_rubble);
			var facing = point_direction(rubble.x, rubble.y, sourceX, sourceY);
			rubble.direction = irandom_range(facing * 0.70, facing * 1.30);
			if (interior) {
				rubble.direction += 180;	
			}
			rubble.speed = 1.1;
		}
	}

}