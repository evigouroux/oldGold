
if (!fired) {
	audio_play_sound(SFX_throw, 1, false);
	obj_player.alarm[0] = game_get_speed(gamespeed_fps)/3;
	alarm[0] = game_get_speed(gamespeed_fps)/4;
	instance_create_depth(obj_player.x + lengthdir_x(6, 180 + pushBack), (obj_player.y - 6) + lengthdir_y(6, 180 + pushBack), depth, obj_thrownDynamite);
	obj_player.pushBack = pushBack;
	obj_player.pushBackSpeed = 2;
	obj_player.zSpeed = 2;
	obj_mineManager.dynamiteStash --;

	if (obj_mineManager.dynamiteStash <= 0) {
		obj_mineManager.secondary = obj_pistol;
		obj_mineManager.equiped = obj_pickaxe;
	}

	fired = true;
}