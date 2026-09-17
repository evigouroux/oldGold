
with(obj_player) {	
	x = obj_campMine.x;
	y = obj_campMine.y;
	zSpeed = 1.5;
	z += 0.1;
	descending = true;
	image_index = round(shrinkage * (sprite_get_number(spr_playerShrinking)-1) / 100);
	sprite_index = spr_playerShrinking;
}

instance_destroy();