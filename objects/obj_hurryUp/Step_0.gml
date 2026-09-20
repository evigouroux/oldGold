timer ++;

if (timer >= game_get_speed(gamespeed_fps) * 2) {
	instance_destroy();	
}