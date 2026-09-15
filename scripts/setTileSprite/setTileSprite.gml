function setTileSprite(tile, propagate){
	
	if (!instance_exists(tile)) {
		return -1;	
	}
	
	var startingIndex = tile.image_index;
	
	var westNeighbor = instance_position(tile.x - tileSize*0.5, tile.y + tileSize*0.5, obj_tile);
	var eastNeighbor = instance_position(tile.x + tileSize*1.5, tile.y + tileSize*0.5, obj_tile);
	var northNeighbor = instance_position(tile.x + tileSize*0.5, tile.y - tileSize*0.5, obj_tile);
	var southNeighbor = instance_position(tile.x + tileSize*0.5, tile.y + tileSize*1.5, obj_tile);

	var contactW = !instance_exists(westNeighbor) || westNeighbor.tileType != tile.tileType;
	var contactE = !instance_exists(eastNeighbor) || eastNeighbor.tileType != tile.tileType;
	var contactN = !instance_exists(northNeighbor) || northNeighbor.tileType != tile.tileType;
	var contactS = !instance_exists(southNeighbor) || southNeighbor.tileType != tile.tileType;
	
	if (contactW && contactN && contactE && !contactS) {
		tile.image_index = 0;	
	}
	else if (contactW && !contactN && contactE && !contactS) {
		tile.image_index = 1;	
	}
	else if (contactW && !contactN && contactE && contactS) {
		tile.image_index = 2;	
	}
	else if (contactW && contactN && !contactE && !contactS) {
		tile.image_index = 3;	
	}
	else if (contactW && !contactN && !contactE && !contactS) {
		tile.image_index = 4;	
	}
	else if (contactW && !contactN && !contactE && contactS) {
		tile.image_index = 5;	
	}
	else if (!contactW && contactN && !contactE && !contactS) {
		tile.image_index = 6;	
	}
	else if (!contactW && !contactN && !contactE && contactS) {
		tile.image_index = 7;	
	}
	else if (!contactW && contactN && contactE && !contactS) {
		tile.image_index = 8;	
	}
	else if (!contactW && !contactN && contactE && !contactS) {
		tile.image_index = 9;	
	}
	else if (!contactW && !contactN && contactE && contactS) {
		tile.image_index = 10;	
	}
	else if (contactW && contactN && !contactE && contactS) {
		tile.image_index = 11;	
	}
	else if (!contactW && contactN && !contactE && contactS) {
		tile.image_index = 12;	
	}
	else if (!contactW && contactN && contactE && contactS) {
		tile.image_index = 13;	
	}
	else if (contactW && contactN && contactE && contactS) {
		tile.image_index = 14;	
	}
	else if (!contactW && !contactN && !contactE && !contactS) {
		tile.image_index = 15;
	}
	
	if (propagate && tile.image_index != startingIndex) {
		setTileSprite(northNeighbor, false);
		setTileSprite(southNeighbor, false);
		setTileSprite(eastNeighbor, false);
		setTileSprite(westNeighbor, false);
	}
	
}