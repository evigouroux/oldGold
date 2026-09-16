
if (!descending) {
	x = obj_tileHole.x + tileSize/2;
	y = obj_tileHole.y + tileSize/2;
	zSpeed = 2;
	z += 0.1;
	descending = true;
	image_index = round(shrinkage * (sprite_get_number(spr_playerShrinking)-1) / 100);
	sprite_index = spr_playerShrinking;
}