
z += zSpeed;
zSpeed -= 0.1;

if (z < 0) {
	instance_destroy();
	
	audio_play_sound(Boom27, 1, false);
	
	var list = ds_list_create();
	collision_circle_list(x, y, 32, obj_tileWall, false, true, list, false);
	for (var i = 0; i < ds_list_size(list); i++) {
		var current = list[|i];
		destroyTile(current, x, y, true);
	}
	
	collision_circle_list(x, y, 32, obj_ghost, false, true, list, false);
	for (var i = 0; i < ds_list_size(list); i++) {
		var current = list[|i];
		instance_destroy(current);
	}
	
	ds_list_destroy(list);
	
	var elder = collision_circle(x, y, 32, obj_elderSam, false, true);
	if (instance_exists(elder)) {
		elder.hP -= 15;
		elder.pushBack = point_direction(x, y, elder.x, elder.y);
		elder.pushBackSpeed = 10;
	}
	
	var explosionMain = instance_create_depth(x, y, depth, obj_explosion);
	explosionMain.sprite_index = spr_explosionBig;
	
	for (var i = 0; i < 9; i++) {
		var explosion = instance_create_depth(x, y, depth, obj_explosion);
		explosion.direction = i*40;
		explosion.speed = 3;
	}
}